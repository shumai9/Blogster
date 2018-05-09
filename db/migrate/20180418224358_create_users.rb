class CreateUsers < ActiveRecord::Migration[5.2]
  def up
    create_table :users do |t|
      t.string :full_name, null: false
      t.string :dob,  null: false
      t.string :email, default: '', null: false
      t.string :password,  limit: 20

      t.timestamps
    end
  end
  
  def down
    drop_table :users
  end
end
