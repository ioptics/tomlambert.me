class ContactMailer < ActionMailer::Base
  def new_message(email)
    subject email.subject
    recipients email.recipients
    from email.from
    sent_on Time.now
    body :email => email
  end
end
