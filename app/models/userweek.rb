class Userweek < ActiveRecord::Base
  attr_accessible :jiras, :summary, :user_id, :week_id
  
  has_many :jiras, dependent: :destroy
  accepts_nested_attributes_for :jiras
  
  belongs_to :user
  belongs_to :week
end
