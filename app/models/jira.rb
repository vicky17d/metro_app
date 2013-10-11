class Jira < ActiveRecord::Base
  attr_accessible :jiranumber, :jirastatus, :userweek_id
  belongs_to :userweek
end
