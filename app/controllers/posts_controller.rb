class PostsController < ApplicationController
  before_filter :authorised?, :except => [:index, :show]
  
  make_resourceful do
    actions :all
  end
  
  def current_object
    @current_object ||= current_model.find_by_permalink!(params[:id])
  end
end
