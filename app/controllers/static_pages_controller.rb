class StaticPagesController < ApplicationController
  def home
   @users = User.all
   @weeks = Week.all
   ### Just a new comment to see  - git fetch origin
  end
end
