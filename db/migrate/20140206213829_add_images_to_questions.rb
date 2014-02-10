class AddImagesToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :images, :boolean
  end
end
