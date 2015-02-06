class CreateDreams < ActiveRecord::Migration
  def change
    create_table :dreams do |t|
      t.string :title, null:false
      t.text   :content, null:false
      t.references :category, null:false
      t.references :user, null:false

      t.timestamps
    end
  end
end
