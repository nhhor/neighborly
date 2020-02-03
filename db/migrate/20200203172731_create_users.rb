class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.column(:user_email, :string)
      t.column(:user_name_first, :string)
      t.column(:user_name_last, :string)
      t.column(:user_zip, :integer)
      t.column(:password_hash, :string)
      t.column(:password_salt, :string)
      t.timestamps
    end
  end
end
