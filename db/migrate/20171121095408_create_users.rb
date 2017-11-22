class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :first_name
      t.string :last_name
      t.string :password_digest, null: false
      t.string :session_token, null: false
      t.boolean :curator, default: false
      t.timestamps
    end
    add_index :users, :username, unique: true
  end
end
