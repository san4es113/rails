# Preview all emails at http://localhost:3000/rails/mailers/mailer
class MailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/mailer/new_mailer
  def new_mailer
  	info = Info.last
    Mailer.new_mailer(info)
  end

end
