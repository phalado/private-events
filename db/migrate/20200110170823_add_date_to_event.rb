class AddDateToEvent < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :date, :datetime
  end
end
