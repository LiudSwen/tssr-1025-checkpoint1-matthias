
Début du script

1. Si on ne reçoit aucun nom d’utilisateur en argument :
    afficher un message disant qu’il manque des noms
    arrêter le script

2. Tant qu’il reste encore des arguments à traiter :
    récupérer le prochain nom d’utilisateur

	vérifier si cet utilisateur existe déjà dans le système
             - s’il existe :
                   afficher qu’il existe déjà
             - sinon :
                   tenter de créer l’utilisateur
                   si la création réussit :
                        afficher que l’utilisateur a été créé
                   sinon :
                        afficher qu’il y a eu une erreur

    passer à l’argument suivant
Fin de la boucle

Fin du script