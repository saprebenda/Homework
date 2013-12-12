class Product < ActiveRecord::Base
  attr_accessible :count, :description, :name, :price, :piggybak_sellable_attributes
  acts_as_sellable
end
