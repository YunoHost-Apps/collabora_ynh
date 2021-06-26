# Collabora Online pour YunoHost

[![Niveau d'intégration](https://dash.yunohost.org/integration/collabora.svg)](https://dash.yunohost.org/appci/app/collabora) ![](https://ci-apps.yunohost.org/ci/badges/collabora.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/collabora.maintain.svg)  
[![Installer Collabora Online avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=collabora)

*[Read this readme in english.](./README.md)*
*[Lire ce readme en français.](./README_fr.md)*

> *Ce package vous permet d'installer Collabora Online rapidement et simplement sur un serveur YunoHost.
Si vous n'avez pas YunoHost, regardez [ici](https://yunohost.org/#/install) pour savoir comment l'installer et en profiter.*

## Vue d'ensemble

Suite office en ligne et collaborative, basée sur LibreOffice

**Version incluse :** 6.4.4~ynh1



## Captures d'écran

![](./doc/screenshots/Collabora_Online_-_versions_integration.png)

## Avertissements / informations importantes

## Configuration

**Settings:**
The settings of Collabora are at `https://office.domain.tld/loleaflet/dist/admin/admin.html`.

- User: admin
- Password: The password set during the installation. (If you forgot it, you can find it again in `/etc/loolwsd/loolwsd.xml`).

## Connexion to Nextcloud

If you want to connect with Nextcloud, you have to install the [Collabora Online](https://apps.nextcloud.com/apps/richdocuments) app in Nextcloud, and configure it with the domain of your Collabora installation.

*:warning: There are several Collabora Online apps. Be sure **not** to install the `Collabora Online - Built-in CODE server` apps, which are a lightwheigt version of this Collabora package. :warning:*

## Limitations

**ARM platform not supported.** If you want to run Collabora on Nextcloud, there is a lightweight version of the Collabora server for ARM, called [Collabora Online - Built-in CODE Server (ARM64)](https://apps.nextcloud.com/apps/richdocumentscode_arm64) which can easily connect with the [Collabora Online](https://apps.nextcloud.com/apps/richdocuments) app.

**CODE has a warning limitation**

![](https://www.libreoffice.org/assets/Uploads/LibreOffice-Online-limit.png)

## Additionnal informations

**Upgrade this package:** 
You can use your YunoHost admin interface, or the command line: `sudo yunohost app upgrade collabora -u https://github.com/YunoHost-Apps/collabora_ynh --debug`

## Documentations et ressources

* Site officiel de l'app : https://collaboraoffice.com
* Documentation officielle utilisateur : https://yunohost.org/#/app_collabora
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