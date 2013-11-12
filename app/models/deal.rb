class Deal < ActiveRecord::Base
  scope :Object_sort, -> { order(:Object_Name)}
  scope :high_price, -> { where('Price > ?', 500)}
  scope :med_price, -> { where('Price >= ? AND Price <= ?', 300, 500)}
  scope :low_price, -> { where('Price < ?', 300)}
  belongs_to :User
  attr_accessible :Object_Name, :Price, :User_id
end