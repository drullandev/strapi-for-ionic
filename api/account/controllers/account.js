'use strict';
const _ = require('lodash');
const { sanitizeEntity } = require('strapi-utils');

const sanitizeUser = user =>
  sanitizeEntity(user, {
	model: strapi.query('user', 'users-permissions').model,
  });


module.exports = {

  async updateUser(ctx) {
	const advancedConfigs = await strapi
	  .store({
		environment: '',
		type: 'plugin',
		name: 'users-permissions',
		key: 'advanced',
	  })
	  .get();

	  console.log(ctx);

	const { id } = ctx.state.user;
	const { email, username, password, currentPassword, passwordConfirmation } = ctx.request.body;

	const user = await strapi.plugins['users-permissions'].services.user.fetch({
	  id,
	});

	if(!email && !password){
	  return ctx.badRequest('noUpdateData');
	}

	if(password && !currentPassword){
	  return ctx.badRequest('currentPassword.isNull');
	}

	if(password && !passwordConfirmation){
	  return ctx.badRequest('passwordConfirmation.isNull');
	}

	if(password && password != passwordConfirmation){
	  return ctx.badRequest('passwordConfirmation.noMatch');
	}

	const validPassword = await strapi.plugins['users-permissions'].services.user.validatePassword(currentPassword, user.password);

	if(password && !validPassword){
	  return ctx.badRequest('currentPassword.notValid')
	}

	if (_.has(ctx.request.body, 'email') && !email) {
	  return ctx.badRequest('email.notNull');
	}

	if (_.has(ctx.request.body, 'username') && !username) {
	  return ctx.badRequest('username.notNull');
	}

	if (_.has(ctx.request.body, 'password') && !password && user.provider === 'local') {
	  return ctx.badRequest('password.notNull');
	}

	if (_.has(ctx.request.body, 'username')) {
	  const userWithSameUsername = await strapi
		.query('user', 'users-permissions')
		.findOne({ username });

	  if (userWithSameUsername && userWithSameUsername.id != id) {
		return ctx.badRequest(
		  null,
		  formatError({
			id: 'Auth.form.error.username.taken',
			message: 'username.alreadyTaken.',
			field: ['username'],
		  })
		);
	  }
	}

	if (_.has(ctx.request.body, 'email') && advancedConfigs.unique_email) {
	  const userWithSameEmail = await strapi
		.query('user', 'users-permissions')
		.findOne({ email: email.toLowerCase() });

	  if (userWithSameEmail && userWithSameEmail.id != id) {
		return ctx.badRequest(
		  null,
		  formatError({
			id: 'Auth.form.error.email.taken',
			message: 'Email already taken',
			field: ['email'],
		  })
		);
	  }
	  ctx.request.body.email = ctx.request.body.email.toLowerCase();
	}

	let updateData = {
	  ...ctx.request.body,
	};

	if (_.has(ctx.request.body, 'password') && password === user.password) {
	  delete updateData.password;
	}

	const data = await strapi.plugins['users-permissions'].services.user.edit({ id }, updateData);

	ctx.send(sanitizeUser(data));
 },

}