class CreatePages < ActiveRecord::Migration[5.2]
  def up
    create_table :pages do |t|
      t.integer  :article_id
      t.string   :name
      t.string   :permalink
      t.integer  :position
      t.boolean  :visibile, default: false
      t.timestamps
    end
    add_index( :pages, :article_id)
    add_index( :pages, :permalink)
  end
  
  def down
    #dont need to drop index as it well be removed when table is droped
    drop_table :pages
  end
end
