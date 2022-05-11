# Collabora Online pour YunoHost

[![Niveau d'intégration](https://dash.yunohost.org/integration/collabora.svg)](https://dash.yunohost.org/appci/app/collabora) ![](https://ci-apps.yunohost.org/ci/badges/collabora.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/collabora.maintain.svg)  
[![Installer Collabora Online avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=collabora)

*[Read this readme in english.](./README.md)*
*[Lire ce readme en français.](./README_fr.md)*

> *Ce package vous permet d'installer Collabora Online rapidement et simplement sur un serveur YunoHost.
Si vous n'avez pas YunoHost, regardez [ici](https://yunohost.org/#/install) pour savoir comment l'installer et en profiter.*

## Vue d'ensemble

Collabora Online est une suite bureautique en ligne open source basé sur LibreOffice qui prend en charge tous les principaux formats de documents, feuilles de calcul et fichiers de présentation, que vous pouvez intégrer à Nextcloud.

### Caractéristiques

- Affichez et modifiez des documents texte, des feuilles de calcul, des présentations, etc.
- Fonctionnalités d'édition collaborative
- Fonctionne dans n'importe quel navigateur moderne - aucun plugin nécessaire
- Conservation de la mise en page et de la mise en forme des documents
- documents texte (odt, docx, doc…)
- des tableurs (ods, xlsx, xls…)
- présentations (odp, pptx, ppt…)

**Version incluse :** 21.11.4.1~ynh1



## Captures d'écran

![](./doc/screenshots/Collabora_Online_-_versions_integration.png)

## Avertissements / informations importantes

## Configuration

**Paramètres :**
Les paramètres de Collabora sont à `https://office.domain.tld/browser/dist/admin/admin.html`.

- Utilisateur : admin
- Mot de passe : Le mot de passe défini lors de l'installation. (Si vous l'avez oublié, vous pouvez le retrouver dans `/etc/coolwsd/coolwsd.xml`).

## Connexion à Nextcloud

Si vous souhaitez vous connecter à Nextcloud, vous devez installer l'application [Collabora Online](https://apps.nextcloud.com/apps/richdocuments) dans Nextcloud, et la configurer avec le domaine de votre installation Collabora.

*:warning: Il existe plusieurs applications Collabora Online. Assurez-vous **de ne pas** installer les applications `Collabora Online - Built-in CODE server`, qui sont une version allégée de ce package Collabora. :warning:*

## Limites

**Plateforme ARM non prise en charge.** Si vous souhaitez exécuter Collabora sur Nextcloud, il existe une version allégée du serveur Collabora pour ARM, appelée [Collabora Online - Built-in CODE Server (ARM64)](https://apps.nextcloud.com/apps/richdocumentscode_arm64) qui peut facilement se connecter à l'application [Collabora Online](https://apps.nextcloud.com/apps/richdocuments).

**CODE a une limitation d'avertissement**

![](https://www.libreoffice.org/assets/Uploads/LibreOffice-Online-limit.png)

## Documentations et ressources

* Site officiel de l'app : https://collaboraoffice.com
* Documentation officielle de l'admin : https://www.collaboraoffice.com/code/
* Documentation YunoHost pour cette app : https://yunohost.org/app_collabora
* Signaler un bug : https://github.com/YunoHost-Apps/collabora_ynh/issues

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche testing](https://github.com/YunoHost-Apps/collabora_ynh/tree/testing).

Pour essayer la branche testing, procédez comme suit.
```
sudo yunohost app install https://github.com/YunoHost-Apps/collabora_ynh/tree/testing --debug
ou
sudo yunohost app upgrade collabora -u https://github.com/YunoHost-Apps/collabora_ynh/tree/testing --debug
```

**Plus d'infos sur le packaging d'applications :** https://yunohost.org/packaging_apps