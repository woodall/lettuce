class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.timestamps null: false
      t.string :email, null: false
      t.string :encrypted_password, limit: 128, null: false
      t.string :confirmation_token, limit: 128
      t.string :remember_token, limit: 128, null: false
      t.integer :family_id
      t.integer :preferences_id
      t.boolean :family_access
    end
    add_index :users, :email
    add_index :users, :remember_token
    add_index :users, :family_id
  end
end
