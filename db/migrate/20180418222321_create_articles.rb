class CreateArticles < ActiveRecord::Migration[5.2]
  def up
    create_table :articles do |t|
      t.string   :title, null: false
      t.string   :author, null: false
      t.integer  :position 
      t.text     :body, null: false
      t.boolean  :visible, default: false 
      t.timestamps
    end
  end

  def down
    drop_table :articles
  end
end
