class UserweeksController < ApplicationController

  def updateSummary
	@user = User.find(params[:userId])
	
	@userweekfound = Userweek.find(params[:userweekId])
	
	if @userweekfound.update_attributes(summary: params[:userweek][:summary])
      #flash[:success] = "Jiras updated "
      
	   respond_to do |format|
         format.html { redirect_to @user }
         format.js 
       end
    end
  end
end
