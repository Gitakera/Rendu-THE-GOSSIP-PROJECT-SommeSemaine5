class AcceulController < ApplicationController
  def acceul
  	if(User.find_by(id: session[:user_id]))
       puts "======================================================================================"  
     puts params
     a = Random.new
     Gossip.create(title: params[:titre], content: params[:contenu], user_id: session[:user_id] )

     puts "======================================================================================"
     redirect_to ''
      
    else
      
      redirect_to "/login"
    end

 end
 
end
