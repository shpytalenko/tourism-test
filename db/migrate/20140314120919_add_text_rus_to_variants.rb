class AddTextRusToVariants < ActiveRecord::Migration
  def change
    add_column :variants, :text_rus, :text
  end
end
