class Post < ActiveRecord::Base
  has_permalink :title
  
  validates_presence_of :title, :author, :body
  
  def to_param
    permalink
  end
end
