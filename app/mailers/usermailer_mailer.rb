class UsermailerMailer < ApplicationMailer
	default from:"prakash.vadher@agileinfoways.com"
	def welcome_email(user)
		@user = user
      	mail(to: "#{@user.email}", subject: 'Ruby On Rails Crud Example')      	
	end
end
