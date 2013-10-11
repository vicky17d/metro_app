class AccomplishmentsController < ApplicationController

  def create
	@user = User.find(params[:userId])
	
	@userweekfound = Userweek.find(params[:accomplishment][:userweek_id])
	@accomplishment = Accomplishment.new(title: params[:accomplishment][:title], userweek_id: params[:accomplishment][:userweek_id])
	#not correct - @allJirasForUserweekfound = Jira.all.where(userweek_id: @userweekfound.id)
	if @accomplishment.save
      #flash[:success] = "Jiras updated "
      
	   respond_to do |format|
         format.html { redirect_to @user }
         format.js 
       end
    end
  end
  
  def destroy
    #@user = User.find(params[:userId])
	@accomplishment=Accomplishment.find(params[:id])
    @accomplishment.destroy
    #flash[:success] = "Project destroyed."
    respond_to do |format|
         format.html { redirect_to @user }
         format.js 
    end
  end
    
  
end
