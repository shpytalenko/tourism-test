class HeadshotPhoto < ActiveRecord::Base
  attr_accessible :description, :image_content_type, :image_file_name, :image_file_size, :image_updated_at

  belongs_to :capturable, :polymorphic => true
  #has_one :person
  
  has_attached_file :image, :styles => { :medium => "200x200>", :thumb => "100x100>" }
end
