class Userweek < ActiveRecord::Base
  attr_accessible  :summary, :user_id, :week_id, :userweekstatus
  
   after_initialize :init
   
  has_many :jiras, dependent: :destroy
  accepts_nested_attributes_for :jiras
  
  has_many :accomplishments, dependent: :destroy
  accepts_nested_attributes_for :accomplishments
  
  has_many :riskitems, dependent: :destroy
  accepts_nested_attributes_for :riskitems
  
  has_many :nextplans, dependent: :destroy
  accepts_nested_attributes_for :nextplans
  
  belongs_to :user
  belongs_to :week
  
  def init
      
      self.summary ||= "Summary..." #let's you set a default association
    end
end
