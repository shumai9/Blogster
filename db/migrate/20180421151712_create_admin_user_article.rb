class CreateAdminUserArticle < ActiveRecord::Migration[5.2]
  
  def up # auto id is turned off
    create_table :admin_user_articles, :id =>false do |t|
      t.integer :admin_user_id
      t.integer :article_id
    end
    add_index(:admin_user_articles, [:admin_user_id, :article_id ]) 
  end

  def down
    drop_table :admin_user_articles
  end
end
