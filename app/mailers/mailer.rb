class Mailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.mailer.new_mailer.subject
  #
  def new_mailer(info)

    @info = info

    mail to:  @info.user.email,
    	subject:"New mail for #{@info.user.email}"
  end
end
