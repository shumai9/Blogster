class CreateArticleEdits < ActiveRecord::Migration[5.2]
  
  def up
    create_table :article_edits do |t|
      t.integer :admin_user_id
      t.integer :article_id
      t.string :summary
      t.timestamps
    end
    add_index(:article_edits,[ :admin_user_id, :article_id])
  end

  def down
    drop_table :article_edits
  end
end

