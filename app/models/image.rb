class Image < ActiveRecord::Base
  has_attached_file :upload, :styles => {
    :large => "600x",
    :medium => "300x", 
    :special => "500x600>",
    :thumb => "100x150>"
  }
  
  has_permalink :title

  validates_presence_of :title, :description
  
  named_scope :recent, :order => 'created_at desc', :limit => 20
  
  def to_param
    permalink
  end
end
