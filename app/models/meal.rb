class Meal < ActiveRecord::Base
  belongs_to :user
  belongs_to :meal_type
  attr_accessible :comments, :rating, :meal_type_id
  
  validates :user, :presence => true
end
