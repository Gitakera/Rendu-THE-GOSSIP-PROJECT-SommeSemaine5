class AcceulController < ApplicationController
  def acceul
  	if(User.find_by(id: session[:user_id]))
      actionok
      
    else
      
      redirect_to "/login"
    end


    def actionok 
     puts "======================================================================================"	
     puts params
     a = Random.new
     Gossip.create(title: params[:titre], content: params[:contenu], user_id: session[:user_id] )

     puts "======================================================================================"
     redirect_to ''
   end
 end
 
end
