class CreatePeopleVariantsTable < ActiveRecord::Migration
  def up
  create_table :people_variants, :id => false do |t|
        t.references :person
        t.references :variant
    end
    add_index :people_variants, [:person_id, :variant_id]
    add_index :people_variants, :variant_id
  end

  def down
     drop_table people_variants
  end
end
