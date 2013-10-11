class RiskitemsController < ApplicationController


  def create
	@user = User.find(params[:userId])
	
	@userweekfound = Userweek.find(params[:riskitem][:userweek_id])
	@riskitem = Riskitem.new(title: params[:riskitem][:title], userweek_id: params[:riskitem][:userweek_id])
	#not correct - @allJirasForUserweekfound = Jira.all.where(userweek_id: @userweekfound.id)
	if @riskitem.save
      #flash[:success] = "Jiras updated "
      
	   respond_to do |format|
         format.html { redirect_to @user }
         format.js 
       end
    end
  end
  
  def destroy
    #@user = User.find(params[:userId])
	@riskitem=Riskitem.find(params[:id])
    @riskitem.destroy
    #flash[:success] = "Project destroyed."
    respond_to do |format|
         format.html { redirect_to @user }
         format.js 
    end
  end
    
  
end
