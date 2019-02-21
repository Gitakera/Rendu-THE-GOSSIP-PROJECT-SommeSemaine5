class AcceuilController < ApplicationController
  def home
  	if(User.find_by(id: session[:user_id]))
      @gossip = Gossip.all
      
    else
  		
  		redirect_to "/login"
  	end
  	
  end

  
  
end
