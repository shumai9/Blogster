class CreateAdminUserPage < ActiveRecord::Migration[5.2]
  def up # auto id is turned off
    create_table :admin_user_pages, :id =>false do |t|
      t.integer :admin_user_id
      t.integer :page_id
    end
    add_index(:admin_user_pages, [:admin_user_id, :page_id ]) 
  end

  def down
    drop_table :admin_user_pages
  end
end
