Panel Bouton------------
Url     : http://codes-sources.commentcamarche.net/source/101802-panel-boutonAuteur  : dubois77Date    : 09/01/2017
Licence :
=========

Ce document intitul� � Panel Bouton � issu de CommentCaMarche
(codes-sources.commentcamarche.net) est mis � disposition sous les termes de
la licence Creative Commons. Vous pouvez copier, modifier des copies de cette
source, dans les conditions fix�es par la licence, tant que cette note
appara�t clairement.

Description :
=============

Pour bien commencer l'année et surtout pour &quot;dynamiser&quot; CIREC, 
<br 
/>voici une petite astuce qui permet d'avoir des boutons en couleurs sans utilis
er de composants extérieurs à Delphi standard
<br /><b>Principe :</b>
<br />
 
<br />• Nommer la série de Panels à convertir avec un nom de base (ex : B
P)
<br />  suivi du nombre de boutons : 1 à N (sans trou) : BP1, BP2, BP3 ...

<br />• Mettre la propriété TAG à la valeur du nom du bouton (1 à N)
<br
 />   Exemple BP1, BP2, ... BP5 : TAG 1, 2, ... 5
<br />• Ajouter la variable
 globale :  KBP : string='BP';
<br />• Ajouter dans Form.Create :
<br />   I
nitMouseBP(5,'BP'); // ,'BP' étant la valeur par défaut, peut être omis
<br 
/>
<br />Il ne reste qu'à définir les couleurs des boutons  !!
<br />
