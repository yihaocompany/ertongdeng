class CreateUndoItems < ActiveRecord::Migration
  def change
    create_table :undo_items do |t|
      t.string :type
      t.string :data

      t.timestamps
    end
  end
end
