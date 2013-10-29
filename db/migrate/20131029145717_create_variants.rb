class CreateVariants < ActiveRecord::Migration
  def self.up
    create_table :variants do |t|
      t.text :text
      t.timestamps
    end
  end

  def self.down
    drop_table :variants
  end
end
