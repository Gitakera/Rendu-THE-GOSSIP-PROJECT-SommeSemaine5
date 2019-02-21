class SessionController < ApplicationController
  def login
  	
  	puts "------------------------------------------------------------------------------"
  	if (params[:email] != "" && params[:password] != "")
  		user = User.find_by(email: params[:email])
	  	
	  	# on vérifie si l'utilisateur existe bien ET si on arrive à l'authentifier (méthode bcrypt) avec le mot de passe 
	  	if user && user.authenticate(params[:password])
	    	session[:user_id] = user.id
	    # redirige où tu veux, avec un flash ou pas
	    	redirect_to "/"

		else
		    flash.now[:danger] = 'Bad email/password'
		    render 'login'
		end

  else
    flash.now[:danger] = 'Empty email/password'
    render 'login'
  end
  
  	
  end

  def create
    a = Random.new
  	puts "======================creation user et sa login info================"
  	if (params[:last_name] != "" && params[:first_name] != "" && params[:email] != "" && params[:password] != "" && (User.create!(first_name: params[:first_name] , last_name: params[:last_name], description: Faker::TvShows::Seinfeld.quote, email: params[:email],password: params[:password], password_confirmation: params[:password_confirmation] ,age: Faker::Number.between(18, 100), citie_id: a.rand(1..20))))
  		user = User.find_by(email: params[:email])
  		session[:user_id] = user.id
    # redirige à l'acceuil, avec un flash ou pas
		flash[:success] = "utilisateur bien crée !"
    	redirect_to ""
  else
    flash.now[:danger] = 'Empty email/password '
    render '/sign_up/createuser'
  end
  	
  end
end
