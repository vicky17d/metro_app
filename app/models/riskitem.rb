class Riskitem < ActiveRecord::Base
  attr_accessible :severity, :title, :userweek_id
  
  belongs_to :userweek
end
