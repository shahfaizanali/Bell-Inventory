class Phone < ActiveRecord::Base
  has_many :imeis
  accepts_nested_attributes_for :imeis
end
