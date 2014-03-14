class AddContentRusToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :content_rus, :text
  end
end
