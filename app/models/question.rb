class Question < ActiveRecord::Base
  #attr_accessible :text, :
  has_many :variants, :dependent => :destroy
  accepts_nested_attributes_for :variants , :allow_destroy => true, :reject_if => :all_blank
end
