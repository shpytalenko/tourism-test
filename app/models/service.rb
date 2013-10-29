class Service < ActiveRecord::Base
  #attr_accessible :name
  has_many :jobs, :dependent => :destroy
  accepts_nested_attributes_for :jobs, :allow_destroy => true, :reject_if => :all_blank
end
