class AlterUser < ActiveRecord::Migration[5.2]
  
  def up
    rename_table("users", "admin_users")
    add_column("admin_users","address", :string, :limit => 25, :after => "email")
    change_column("admin_users", "email", :string, :limit => 100)
    rename_column("admin_users", "password", "hashed_password")
    puts "*** adding index ***"
    add_index("admin_users", "username")
  end

  def down
    remove_index("admin_users", "username")
    rename_column("admin_users", "hashed_password", "password") 
    change_column("admin_users", "email", :string, :default => '', null: false)
    remove_column("admin_users","address")
    rename_table("admin_users", "users")
    
  end

end
