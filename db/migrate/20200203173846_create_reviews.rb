class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.column(:user_id, :integer)
      t.column(:reviewer_id, :integer)
      t.column(:user_like, :boolean)
      t.column(:user_comments, :text)
      t.timestamps
    end
  end
end
