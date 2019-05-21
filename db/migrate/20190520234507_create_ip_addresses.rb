class CreateIpAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :ip_addresses do |t|
      t.text :address_data, array: true, default: []
      t.timestamps
    end
  end
end
