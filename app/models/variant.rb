class Variant < ActiveRecord::Base
  #attr_accessible :text, :question_id
  belongs_to :question
  has_and_belongs_to_many :people
  has_and_belongs_to_many :jobs
  accepts_nested_attributes_for :jobs
end
