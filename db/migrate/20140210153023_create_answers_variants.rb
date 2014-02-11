class CreateAnswersVariants < ActiveRecord::Migration
  def up
    create_table :answers_variants, :id => false do |t|
        t.references :answer
        t.references :variant
    end
    add_index :answers_variants, [:answer_id, :variant_id]
    add_index :answers_variants, :variant_id
  end

  def down
    drop_table answers_variants
  end
end
