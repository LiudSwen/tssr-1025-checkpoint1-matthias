#!/bin/bash

# Script création de compte

# Vérification des utilisateurs données en arguments
if [ $# -eq 0 ]
then
   echo "Il manque les noms d'utilisateurs en argument - fin du script"
   exit 1
fi

# Boucle
while [ $# -ne 0 ] 
do
    newUser="$1"

    # Vérification si utilisateur existe
    if cat /etc/passwd | grep "$newUser" > /dev/null
    then
        echo -e "L'utilisateur $newUser existe déjà"
    else
        # Création de l'utilisateur
        useradd $newUser 

         # Vérification de la création de l'utilisateur

        if [ $? = 0 ]
        then
            echo -e "L'utilisateur $newUser à été crée"
        else
            echo -e "Erreur à la création de l'utilisateur $newUser"
        fi
    fi

    shift
done