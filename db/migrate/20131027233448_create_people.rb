class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :sex
      t.date :dob
      t.string :school_number
      t.string :school_type
      t.string :klass
      t.integer :headshot_photo
      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
