class Person < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :sex, :dob, :school_number, :school_type, :klass, :headshot_photo
end
