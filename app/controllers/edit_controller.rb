class EditController < ApplicationController
  def edit
  	if(User.find_by(id: session[:user_id]))
     gossip_afficher = Gossip.all.find(params[:id_gossip])
    @UserFirstName = gossip_afficher.user.first_name
    @TitreGossip = gossip_afficher.title
    @ContenuGossip = gossip_afficher.content
    @DateOeuvre = gossip_afficher.created_at
    @id_gossip = params[:id_gossip]
      
    else
  		
  		redirect_to "/login"
  	end
      
  end
end
