class AfficherController < ApplicationController

def actionok 
    gossip_afficher = Gossip.all.find(params[:id_gossip])
    @UserFirstName = gossip_afficher.user.first_name
    @TitreGossip = gossip_afficher.title
    @ContenuGossip = gossip_afficher.content
    @DateOeuvre = gossip_afficher.created_at
    @id_gossip = params[:id_gossip]
    @ville = gossip_afficher.user.citie.name
    @UserLastName = gossip_afficher.user.last_name
    @UserDescription = gossip_afficher.user.description
    @UserEmail = gossip_afficher.user.email
    @UserAge = gossip_afficher.user.age



    #gestion des commentaire---------------------------
        #Begin---appel depuis la BDD : comment et ucomment------------
          @commentaire = Comment.where(gossip_id: @id_gossip)
          @sousCommentaire = Ucomment.all
        #End-----appel depuis la BDD : comment et ucomment------------

    end
  
  def afficher
    if(User.find_by(id: session[:user_id]))
      actionok
      
    else
  		
  		redirect_to "/login"
  	end


  	

























  end
end
