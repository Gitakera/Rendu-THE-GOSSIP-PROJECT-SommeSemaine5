class DeleteController < ApplicationController
  def delete
  	if(User.find_by(id: session[:user_id]))
      gBeDestroyed = Gossip.find(params[:id_gossip])
    gBeDestroyed.destroy
    redirect_to ''
    else
  		
  		redirect_to "/login"
  	end

  end
end
