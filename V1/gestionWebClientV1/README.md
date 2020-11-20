# gestionWebClient V1

Client du WebService contenant le site web du projet GestionEnsup

## Prérequis

- JDK 8
- Maven 3.6.3
- Apache Tomcat 9 configuré sur le port 8080
- Avoir installé et déployé [gestionWebServiceV1](https://github.com/BenjaminBoutrois/GestionEnsupWebService/tree/main/V1/gestionWebServiceV1)

## Installation

1.  Cloner le dépôt
2.  A la racine du projet, ouvrir un invite de commande et taper l'instruction `mvn clean package` pour compiler le projet
3.  Une fois compilé, copier le fichier `gestionWebClientV1\webclient\target\webclient.war` dans le dossier **webapps** du serveur Tomcat
4.  Lancer le serveur Tomcat pour déployer le projet sur le serveur
5.  Ouvrir un navigateur et entrer `http://127.0.0.1:8080/webclient` dans la barre d'URL pour accéder à l'application

Remarque : infos de connexion  (login : toto, password : toto)
