class AddEventCategoryToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :event_category, :string
  end
end
