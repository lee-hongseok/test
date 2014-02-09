class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string "title"
      t.integer "quest_id"
      t.timestamps
    end
  end
end
