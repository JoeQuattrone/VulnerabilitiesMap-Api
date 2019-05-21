require 'dotenv/load'
require 'pry'
require 'faraday'
require 'faraday_middleware'
class Hacker < ApplicationRecord
  validates_presence_of attribute_names.reject { |attr| attr =~ /id|created_at|updated_at|city|zip|region_code|region_name|capital/i }

  validates :ip, uniqueness: true

  self.inheritance_column = :_type_disabled

  def self.make_hackers
    apikey = ENV["API_KEY"]
    base_url = 'http://api.ipstack.com/'
    # did not run it yet
    ips = IpAddress.first.address_data[2601..3100]

    ips.each do |ip|
      res = Faraday.get (base_url + "#{ip}" + "?access_key=#{apikey}")

      json = JSON.parse(res.body)
      hacker = Hacker.new
      json.each do |key, value|
        hacker.send("#{key}=", value) rescue nil
      end

      hacker.geoname_id =  json["location"]["geoname_id"]
      hacker.capital = json["location"]["capital"]
      hacker.save
    end
  end
end
