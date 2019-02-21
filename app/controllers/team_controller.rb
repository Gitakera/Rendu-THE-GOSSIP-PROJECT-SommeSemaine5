class TeamController < ApplicationController
  def team
    if(User.find_by(id: session[:user_id]))
     
      
    else
  		
  		redirect_to "/login"
  	end
  end
end
