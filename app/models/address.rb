class Address < ActiveRecord::Base
  belongs_to :resource, polymorphic: true
  belongs_to :country
end
