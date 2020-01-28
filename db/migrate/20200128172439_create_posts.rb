class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :artist
      t.string :date
      t.string :medium
      t.string :genre

      t.timestamps
    end
  end
end
