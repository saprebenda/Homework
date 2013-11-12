class Deal < ActiveRecord::Base
  belongs_to :User
  attr_accessible :Object_Name, :Price, :User_id
  scope :incomplete, -> { where(completed: false).order(:title)}
  scope :high_priority, -> { where('priority = ?',"high")}
  scope :med_priority, -> { where('priority = ?',"medium")}
  scope :low_priority, -> { where('priority = ?',"low")}
end
