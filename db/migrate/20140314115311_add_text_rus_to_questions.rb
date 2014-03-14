class AddTextRusToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :text_rus, :text
  end
end
