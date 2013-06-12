class MessagesMailer < ActionMailer::Base
  default to: "stager94@gmail.com"

  def book
  	mail from: 'stager94@mail.ru', subject: 'Subject'
  end
end
