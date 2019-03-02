# DESCRIPTION DE L'APP RAILS  https://gitakera.github.io/Rendu-THE-GOSSIP-PROJECT-SommeSemaine5/

Les fonctionnalités inclusent :

* Un système de login / logout avec une page de connexion(login) et d'inscription(Sign up). (gem bcrypt & session)

* Les potins créés sont associés à l'utilisateur en cours, idem pour les commentaires. (session[:user_id])

* Désormais impossible : la création de potin si l'utilisateur n'est pas connecté. Idem pour show du potin
    Édition et destruction des potins. (check&redirection)

* le système de likes. (like & dislike)

* Un CRUD complet des: utilisateurs, Gossips, like, comments(creat) 


