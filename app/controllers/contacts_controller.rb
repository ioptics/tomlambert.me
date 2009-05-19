class ContactsController < ApplicationController
  make_resourceful do
    actions :new, :create
  end
end
