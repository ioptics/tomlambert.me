class ContactMailer < ActionMailer::Base
  def new_message(message)
    subject message.subject
    recipients message.recipients
    from message.from
    sent_on Time.now
    body :contact => contact
  end
end
