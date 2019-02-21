class LikehandleController < ApplicationController
  def like
  	puts "like==================================================================================="
  	Like.create!(user_id: params[:user_id], gossip_id: params[:id_gossip])
  	redirect_to "/afficher/#{params[:id_gossip]}"
  end

  def dislike
  	puts "dislike================================================================================"
  	begin
  		Like.find_by(user_id: params[:user_id], gossip_id: params[:id_gossip]).destroy
  	rescue Exception => e
  		redirect_to "/afficher/#{params[:id_gossip]}"
  	else
  		redirect_to "/afficher/#{params[:id_gossip]}"
  	end
  	
  	
  end



   def like_home
  	puts "like==================================================================================="
  	Like.create!(user_id: params[:user_id], gossip_id: params[:id_gossip])
  	redirect_to "/"
  end

  def dislike_home
  	puts "dislike================================================================================"
  	begin
  		Like.find_by(user_id: params[:user_id], gossip_id: params[:id_gossip]).destroy
  	rescue Exception => e
  		redirect_to "/afficher/#{params[:id_gossip]}"
  	else
  		redirect_to "/"
  	end
  	
  	
  end



end
