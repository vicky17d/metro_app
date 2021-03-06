class JirasController < ApplicationController

  def create
	@user = User.find(params[:userId])
	
	@userweekfound = Userweek.find(params[:jira][:userweek_id])
	@jira = Jira.new(jiranumber: params[:jira][:jiranumber], userweek_id: params[:jira][:userweek_id], jirastatus: params[:jira][:jirastatus])
	#not correct - @allJirasForUserweekfound = Jira.all.where(userweek_id: @userweekfound.id)
	if @jira.save
      #flash[:success] = "Jiras updated "
      
	   respond_to do |format|
         format.html { redirect_to @user }
         format.js 
       end
    end
  end
  
  def destroy
    #@user = User.find(params[:userId])
	@jira=Jira.find(params[:id])
    @jira.destroy
    #flash[:success] = "Project destroyed."
    respond_to do |format|
         format.html { redirect_to @user }
         format.js 
    end
  end
    
    
end
