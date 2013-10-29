class RenamePersonHeadshotPhoto < ActiveRecord::Migration
  def up
    rename_column :people, :headshot_photo, :headshot_photo_id
  end

  def down
    rename_column :people, :headshot_photo_id, :headshot_photo
  end
end
