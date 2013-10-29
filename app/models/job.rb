class Job < ActiveRecord::Base
  attr_accessible :name, :service_id
  belongs_to :service
end
