class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.string "title"
      t.string "content"
      t.integer "post_id"
      t.timestamps
    end
  end
end
