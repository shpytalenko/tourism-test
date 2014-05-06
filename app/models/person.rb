class Person < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :sex, :dob, :age, :school_number, :school_type, :klass, :headshot_photo_id
  #belongs_to :headshot_photo
  has_many :headshot_photos, :as => :capturable
  has_and_belongs_to_many :variants
  after_create :clear

  def clear
    Person.where(["created_at < ?", 2.days.ago]).delete_all 
  end
 

  def show_answer(lang)
    list = []
    self.variants.each do |variant|
      list += variant.answer_ids
    end
    answer_id = list.group_by{|a| a }.sort_by{|a,b| b.size<=>a.size}.first[0]
    answer = Answer.find(answer_id)

    return  lang == "ukr" ? answer.content : answer.content_rus   
  end
end
