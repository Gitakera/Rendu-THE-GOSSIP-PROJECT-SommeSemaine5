class CommenterController < ApplicationController
  def commenter
    if(User.find_by(id: session[:user_id]))
      a = Random.new
      puts "***************************creating a new comment*****************************************"
        if(params[:commentaire]!="")
          Comment.create!(content: params[:commentaire], user_id: session[:user_id], gossip_id: params[:id_gossip])
        end
      redirect_to "/afficher/#{params[:id_gossip]}"

    else

      redirect_to "/login"
    end
  end
    def souscommenter
      if(User.find_by(id: session[:user_id]))
        
        puts "==========================creating a new ucomment======================================"
        a = Random.new
        if(params[:sous_commentaire]!="")
          Ucomment.create!(content: params[:sous_commentaire], user_id: session[:user_id], comment_id: params[:id_commentaire])
        end
        redirect_to "/afficher/#{params[:id_gossip]}"

      else

        redirect_to "/login"
      end
    end
end
