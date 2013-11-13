class Deal < ActiveRecord::Base
  scope :Object_sort, -> { order(:Object_Name)}
  scope :high_price, -> { where('price > ?', 500)}
  scope :med_price, -> { where('price >= ? AND price <= ?', 300, 500)}
  scope :low_price, -> { where('price < ?', 300)}
  belongs_to :User
  attr_accessible :Object_Name, :price, :User_id
end