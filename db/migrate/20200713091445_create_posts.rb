class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :fee,   null: false
      t.text :caption,    null: false
      t.string :title,    null: false

      t.timestamps
    end
  end
end
