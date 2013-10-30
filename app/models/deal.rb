class Deal < ActiveRecord::Base
  belongs_to :User
  attr_accessible :Object_Name, :Price, :User_id
end
