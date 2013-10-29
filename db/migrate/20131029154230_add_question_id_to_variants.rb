class AddQuestionIdToVariants < ActiveRecord::Migration
  def change
    add_column :variants, :question_id, :integer
  end
end
