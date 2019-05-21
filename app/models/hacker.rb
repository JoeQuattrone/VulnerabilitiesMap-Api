class Hacker < ApplicationRecord
  validates_presence_of attribute_names.reject { |attr| attr =~ /id|created_at|updated_at/i }

  validates :ip, uniqueness: true

  
end
