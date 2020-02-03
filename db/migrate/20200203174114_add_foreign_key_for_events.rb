class AddForeignKeyForEvents < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :events, :users
    add_foreign_key :reviews, :users
  end
end
