class Job < ActiveRecord::Base
  #attr_accessible :name, :service_id
  belongs_to :service
  has_and_belongs_to_many :variants
  accepts_nested_attributes_for :variants
end
