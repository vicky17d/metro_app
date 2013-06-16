class StaticPagesController < ApplicationController
  def home
   @users = User.all
   @weeks = Week.all
  end
end
