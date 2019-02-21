class LogoutController < ApplicationController
  def logout
  	session.delete(:user_id)
  	redirect_to "/login"
  end
end
