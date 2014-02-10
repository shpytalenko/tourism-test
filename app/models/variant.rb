class Variant < ActiveRecord::Base
  #attr_accessible :text, :question_id
  has_attached_file :image, :styles => { :medium => "200x200#", :thumb => "100x100#" }
validates_attachment_content_type :image, :content_type => %w(image/jpeg image/jpg image/png)
  belongs_to :question
  has_and_belongs_to_many :people
  has_and_belongs_to_many :jobs
  accepts_nested_attributes_for :jobs
end
