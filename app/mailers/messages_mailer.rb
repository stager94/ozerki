class MessagesMailer < ActionMailer::Base
  default to: "aho@skmz.dn.ua"

  def book(params)
    @name   = params[:name]
    @phone  = params[:phone]
    @email  = params[:email]
    @from   = params[:from]
    @to     = params[:to]
    @places = params[:places]
    @to     = Configure.first[:book_email]

  	mail to: @to, from: @email, subject: I18n.t('masseges_mailer.subjects.booking')
  end
end