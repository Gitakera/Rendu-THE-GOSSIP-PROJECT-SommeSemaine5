# README

This README would normally document whatever steps are necessary to get the
application up and running.

Les fonctionnalités inclusent :

* Un système de login / logout avec une page de connexion(login) et d'inscription(Sign up). (gem bcrypt & session)

* Les potins créés sont associés à l'utilisateur en cours, idem pour les commentaires. (session[:user_id])

* Désormais impossible : la création de potin si l'utilisateur n'est pas connecté. Idem pour show du potin
    Édition et destruction des potins. (check&redirection)

* le système de likes. (like & dislike)

* Un CRUD complet des: utilisateurs, Gossips, like, comments(creat) 


