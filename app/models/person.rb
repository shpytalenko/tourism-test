class Person < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :sex, :dob, :age, :school_number, :school_type, :klass, :headshot_photo_id
  #belongs_to :headshot_photo
  has_many :headshot_photos, :as => :capturable
  has_and_belongs_to_many :variants
  after_create :add_photo

  def add_photo
    if HeadshotPhoto.all.size > 0
      self.headshot_photos << HeadshotPhoto.all.last
    end
  end
  def show_answer
    list = []
    self.variants.each do |variant|
      list += variant.answer_ids
    end
    answer_id = list.group_by{|a| a }.sort_by{|a,b| b.size<=>a.size}.first[0]
    return Answer.find(answer_id).content
  end
end
