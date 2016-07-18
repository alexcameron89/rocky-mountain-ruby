class ContactMailer < ApplicationMailer
	include SendGrid

	def form_request(name, email, comment)
		@name = name
		@email = email
		@comment = comment
		mail(to: 'jorge@turing.io', subject: 'Rock Mountain Ruby Contact Request')
	end
end
