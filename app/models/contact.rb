class Contact < ActiveRecord::Base
  validates_presence_of :name, :email, :message
  validates_format_of :email, :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i
  validates_length_of :email, :within => 5..255
  
  after_save :send_email!
  
  def send_email!
    ContactMailer.deliver_new_message(self)
  end
  
  def subject
    'TOLA - Contact Form Message'
  end
  
  def recipients
    'inneroptics@gmail.com'
  end
  
  def from
    respond_to?(:email) ? email : 'noreply@tomlambert.me'
  end
end
