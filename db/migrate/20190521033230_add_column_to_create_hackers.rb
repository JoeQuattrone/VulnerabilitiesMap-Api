class AddColumnToCreateHackers < ActiveRecord::Migration[5.2]
  def change
    add_column :hackers, :country_name, :string
  end
end
