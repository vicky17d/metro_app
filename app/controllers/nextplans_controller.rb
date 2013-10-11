class NextplansController < ApplicationController

  def create
	@user = User.find(params[:userId])
	
	@userweekfound = Userweek.find(params[:nextplan][:userweek_id])
	@nextplan = Nextplan.new(title: params[:nextplan][:title], userweek_id: params[:nextplan][:userweek_id])
	#not correct - @allJirasForUserweekfound = Jira.all.where(userweek_id: @userweekfound.id)
	if @nextplan.save
      #flash[:success] = "Jiras updated "
      
	   respond_to do |format|
         format.html { redirect_to @user }
         format.js 
       end
    end
  end
  
  def destroy
    #@user = User.find(params[:userId])
	@nextplan=Nextplan.find(params[:id])
    @nextplan.destroy
    #flash[:success] = "Project destroyed."
    respond_to do |format|
         format.html { redirect_to @user }
         format.js 
    end
  end
    
end
