class RemoveEventsCategoryFromEvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :event_category, :string
  end
end
