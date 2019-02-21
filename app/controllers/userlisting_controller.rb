class UserlistingController < ApplicationController
  def userlisting
      if(User.find_by(id: session[:user_id]))
        
        @userall = User.all
        @HTMLModal=""

        @userall.each do |user|
          list = Gossip.find_by_sql("SELECT gossips.title, gossips.content, users.first_name FROM gossips INNER JOIN users ON users.id =  gossips.user_id WHERE users.citie_id=#{user.citie_id}" )
          puts "#{list}"
          puts "========================================================================================="
          @HTMLModal="#{@HTMLModal}<div class=\"modal fade bd-example-modal-xl#{user.citie_id} \" 
          tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myExtraLargeModalLabel\" aria-hidden=\"true\" >
          
          <div class=\"modal-dialog modal-xl\">

          <div class=\"modal-content\">
          <div class=\"text-center\"><h1 style=\" font-family: Purisa;\"> #{user.citie.name} : ...#{user.citie_id}</h1></div>
          <h5 class=\"text-center\" style=\" font-family: Purisa;\">Les potins écrits par les utilisateurs associés à la ville en question</h5>"

          @HTMLModal="#{@HTMLModal}<div class=\"card-deck\" style=\"width:100%; margin-left:auto;margin-right:auto;\">"

          list.each do |gos|

           @HTMLModal="#{@HTMLModal}<div class=\"card\" style=\" margin:5%;\">

           <div class=\"card-body\" >
           <h5 class=\"card-title\">#{gos[:title]}</h5>
           <p class=\"card-text\">#{gos[:content]}</p>
           </div>

           <div class=\"card-footer\">
           <small class=\"text-muted\">Last updated 3 mins ago</small>
           </div>

           </div>"

         end


         @HTMLModal="#{@HTMLModal}</div>




         </div>             
         </div>  
         </div>"

          end

      else
    		redirect_to "/login"
    	end


  
  end
end
