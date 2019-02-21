class ModifController < ApplicationController
  def modif
    if(User.find_by(id: session[:user_id]))
      Gossip.find(params[:id_gossip]).update(title: params[:titre] , content: params[:contenu])
    redirect_to ''
      
    else
  		
  		redirect_to "/login"
  	end


  end
end
