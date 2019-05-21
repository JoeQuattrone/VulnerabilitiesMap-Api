class CreateHackers < ActiveRecord::Migration[5.2]
  def change
    create_table :hackers do |t|
      t.string :ip
      t.string :type
      t.string :continent_code
      t.string :continent_name
      t.string :country_code
      t.string :region_code
      t.string :region_name
      t.string :city
      t.string :zip
      t.decimal :latitude
      t.decimal :longitude
      t.integer :geoname_id
      t.string :capital

      t.timestamps
    end
  end
end

# "ip": "134.201.250.155",
  # "type": "ipv4",
  # "continent_code": "NA",
  # "continent_name": "North America",
  # "country_code": "US",
  # "country_name": "United States",
  # "region_code": "CA",
  # "region_name": "California",
  # "city": "San Dimas",
  # "zip": "91773",
  # "latitude": 34.1049,
  # "longitude": -117.8132,
  # "location": {
  #   "geoname_id": 5391891,
  #   "capital": "Washington D.C.",
  #   "languages": [
  #     {
  #       "code": "en",
  #       "name": "English",
  #       "native": "English"
  #     }
  #   ],
