class ContactsController < ApplicationController
  make_resourceful do
    actions :new, :create
    
    response_for :create do 
      flash[:success] = 'Message successfully received'
      redirect_to new_contact_path
    end
  end
end
