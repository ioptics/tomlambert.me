class Post < ActiveRecord::Base
  has_permalink :title
  
  validates_presence_of :title, :author, :body
  
  named_scope :recent, :order => 'created_at desc', :limit => 20
  
  def to_param
    permalink
  end
end
