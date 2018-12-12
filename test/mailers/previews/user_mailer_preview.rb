# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

	def new_comment_email_preview
		UserMailer.new_comment_email(first.comment)
	end

end
