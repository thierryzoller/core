Beschreibung 
===========

Le **centre de mise à jour** permet de mettre à jour toutes les
fonctionnalités de Jeedom, incluant le logiciel de base (core), les
plugins, les widgets, etc. D’autres fonctions de gestion des extensions
sont diponibles (supprimer, réinstaller, vérifier, etc.)

Die Update Center Seite
================================

Elle est accessible par le menu **Réglages → Système → Centre de mise à
jour** et se composent de 3 onglets et une partie haute.

Die Funktionen oben auf der Seite.
---------------------------------

En haut de la page, indépendant de l'onglet, se trouvent les boutons de commande. 
Jeedom se connecte périodiquement au Market pour voir si des mises à jour
sont disponibles (la date de dernière vérification est indiquée en haut
à gauche de la page). Si vous voulez réaliser une vérification manuelle,
vous pouvez appuyer sur le bouton "Vérifier les mises à jour".

Le bouton **Mettre à jour** permet de mettre à jour l’ensemble de
Jeedom. Une fois que vous avez cliqué dessus, on obtient ces différentes
options :
-   **Pré-update** : Permet de mettre à jour le script de mise à jour avant
    applicatifs des nouvelles mises à jour.

-   **Vorher speichern** : Führt vor dem Update eine Jeedom-Sicherung 
    durch.

-   **Plugins aktualisieren** : Ermöglicht Plugins im Update zu
    integrieren.

-   **Kern aktualisieren** : Ermöglicht Ihnen, den Jeedom-Kernel in das
    Update aufzunehmen.

-   **Mode forcé** : Effectue la mise à jour en mode forcé, c’est-à-dire
    que, même s’il y a une erreur, Jeedom continue et ne restaurera pas
    la sauvegarde. (Ce mode désactive la sauvegarde !)

-   **Mise à jour à réappliquer** : Permet de réappliquer une mise
    à jour. (NB : Toutes les mises à jour ne peuvent pas être réappliquées.)

> **Wichtig**
>
>Vor der Aktualisierung wird Jeedom standardmäßig eine Sicherungskopie
> erstellen. Bei Problemen beim Anwenden eines Updates wird Jeedom
> automatisch die zuvor erstellte Sicherung wiederherstellen. Dieses Prinzip
> gilt natürlich nur für Jeedom Updates, nicht für Plugins.

> **Tipp**
>
> Sie können ein Update von Jeedom erzwingen, auch wenn es Ihnen nicht
> angeboten wird.

Onglets Core et Plugins et l'onglet Autres
------------------------------------------

Ces deux onglets similaires, se composent d'un tableau :

-   **Core et Plugins** : Contient le logiciel de base de Jeedom (core) et la
    liste des plugins installés.

-   **Autres** : Contient les widgets, les scripts, etc.

Hier finden Sie folgende Informationen: * **Status** : OK oder NOK. Zeigt den
aktuellen Status des Plugins an. * **Name** : Sie sehen die Quelle des
Elements, den Typ des Elements und seinen Namen. * **Version** : Gibt die
genaue Version des Elements an. * **Optionen** : Aktivieren Sie dieses
Kontrollkästchen, wenn das Element während des allgemeinen Updates
nicht aktualisiert werden soll (Schaltfläche **Updaten**).

> **Tipp**
>
> Pour chaque tableau, la première ligne permet de filter suivant
> le nom des éléments présents.

Sur chaque ligne, vous pouvez utiliser les fonctions suivantes pour
chaque élément :

-   **Neu installieren** : Erzwingt eine Neuinstallation.

-   **Löschen** : Ermöglicht das Elemente zu löschen.

-   **Prüfen** : Überprüft die Update-Quelle, um herauszufinden, 
    ob ein neues Update verfügbar ist.

-   **Update** : Ermöglicht das Element zu aktualisieren (wenn ein 
    Update verfügbar ist).

-   **Änderungsprotokoll** : Bietet Zugriff auf die Liste der Änderungen der 
    Updates.

> **Wichtig**
>
> Si le changelog est vide mais que vous avez tout de même une mise à
> jour, cela signifie que c’est la documentation qui a été mise à jour.
> Il n’est donc pas nécessaire de demander au développeur les
> changements, vu qu’il n’y en a pas forcément. (c’est souvent une mise
> à jour de la traduction, de la documentation)

> **Tipp**
>
> Beachten Sie, dass "core : jeedom" "Aktualisierung der Jeedom
> Kernsoftware" bedeutet.

Onglet Logs
-----------

Onglet vers lequel vous êtes automatiquement basculé en cas d'installation
de mise à jour, il vous permet de suivre tout ce qui se passe durant la mise
à jour du core, comme des plugins.


Mise à jour en ligne de commande 
================================

Es ist möglich, Jeedom direkt in SSH zu aktualisieren. Sobald die Verbindung
hergestellt ist, folgt der folgende Befehl :

    sudo php /var/www/html/install/update.php

Die möglichen Parameter sind :

-   **`mode`** : `force`, um ein Update im erzwungenen Modus zu starten (be
    rücksichtigt keine Fehler).

-   **`version`** : gefolgt von der Versionsnummer, um Änderungen von 
    dieser Version erneut anzuwenden.

Voici un exemple de syntaxe pour faire une mise à jour forcée en
réappliquant les changements depuis la 3.2.14 :

    sudo php  /var/www/html/install/update.php mode=force version=3.2.14

Achtung nach einem Update in der Komandozeile müssen Sie die Rechte an
den Jeedom Ordner erneut anwenden :

    chown -R www-data:www-data /var/www/html
