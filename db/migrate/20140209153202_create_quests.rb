class CreateQuests < ActiveRecord::Migration
  def change
    create_table :quests do |t|
      t.string "title"
      t.string "category"
      t.string "content"
      t.string "schedule"
      t.timestamps
    end
  end
end
