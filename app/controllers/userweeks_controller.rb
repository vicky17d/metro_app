class UserweeksController < ApplicationController

  def updateSummary
	@user = User.find(params[:userId])
	
	@userweekfound = Userweek.find(params[:userweekId])
	if ( params[:userweek][:summary].size != 0 )
		summary = params[:userweek][:summary]
	else 
		summary = "Summary.."
	end
	
	if @userweekfound.update_attributes(summary: summary)
      #flash[:success] = "Jiras updated "
      
	   respond_to do |format|
         format.html { redirect_to @user }
         format.js 
       end
    end
  end
  
  def updateDone
	@user = User.find(params[:userId])
	
	@userweekfound = Userweek.find(params[:userweekId])
	
	if @userweekfound.update_attributes(userweekstatus: params[:userweek][:userweekstatus])
	
      #flash[:success] = "Jiras updated "
      
	   respond_to do |format|
         format.html { redirect_to @user }
         format.js 
       end
    end
  end
  
end
