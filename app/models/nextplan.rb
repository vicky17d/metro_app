class Nextplan < ActiveRecord::Base
  attr_accessible :title, :userweek_id
  
  belongs_to :userweek
end
