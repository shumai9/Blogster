class CreateComments < ActiveRecord::Migration[5.2]
  def up
    create_table :comments do |t|
      t.integer  :page_id
      t.string   :name, null: false
      t.integer  :position 
      t.text     :body, :null => false
      t.boolean  :visible, default: false
      t.string   :comment_type
      t.timestamps
    end
    add_index(:comments, :page_id)
  end
  
  def down
    drop_table :comments
  end
end
