class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.column(:event_name, :string)
      t.column(:event_date, :date)
      t.column(:event_time, :time)
      t.column(:event_address, :string)
      t.column(:event_zip, :integer)
      t.column(:event_city, :string)
      t.column(:event_state, :string)
      t.column(:event_description, :string)
      t.column(:event_age_min, :integer)
      t.column(:event_category, :string)
      t.column(:event_min_seats, :integer)
      t.column(:event_max_seats, :integer)
      t.column(:user_id, :integer)
      t.timestamps
    end
  end
end
