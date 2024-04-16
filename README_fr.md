<!--
Nota bene : ce README est automatiquement généré par <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Il NE doit PAS être modifié à la main.
-->

# Collabora Online pour YunoHost

[![Niveau d’intégration](https://dash.yunohost.org/integration/collabora.svg)](https://dash.yunohost.org/appci/app/collabora) ![Statut du fonctionnement](https://ci-apps.yunohost.org/ci/badges/collabora.status.svg) ![Statut de maintenance](https://ci-apps.yunohost.org/ci/badges/collabora.maintain.svg)

[![Installer Collabora Online avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=collabora)

*[Lire le README dans d'autres langues.](./ALL_README.md)*

> *Ce package vous permet d’installer Collabora Online rapidement et simplement sur un serveur YunoHost.*  
> *Si vous n’avez pas YunoHost, consultez [ce guide](https://yunohost.org/install) pour savoir comment l’installer et en profiter.*

## Vue d’ensemble

Collabora Online est une suite bureautique en ligne open source basé sur LibreOffice qui prend en charge tous les principaux formats de documents, feuilles de calcul et fichiers de présentation, que vous pouvez intégrer à Nextcloud.

### Caractéristiques

- Affichez et modifiez des documents texte, des feuilles de calcul, des présentations, etc.
- Fonctionnalités d'édition collaborative
- Fonctionne dans n'importe quel navigateur moderne - aucun plugin nécessaire
- Conservation de la mise en page et de la mise en forme des documents
- documents texte (odt, docx, doc…)
- des tableurs (ods, xlsx, xls…)
- présentations (odp, pptx, ppt…)

**Version incluse :** 22.05.14.3~ynh2

## Captures d’écran

![Capture d’écran de Collabora Online](./doc/screenshots/Nextcloud-writer.png)

## Documentations et ressources

- Site officiel de l’app : <https://collaboraoffice.com>
- Documentation officielle de l’admin : <https://www.collaboraoffice.com/code/>
- YunoHost Store : <https://apps.yunohost.org/app/collabora>
- Signaler un bug : <https://github.com/YunoHost-Apps/collabora_ynh/issues>

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche `testing`](https://github.com/YunoHost-Apps/collabora_ynh/tree/testing).

Pour essayer la branche `testing`, procédez comme suit :

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/collabora_ynh/tree/testing --debug
ou
sudo yunohost app upgrade collabora -u https://github.com/YunoHost-Apps/collabora_ynh/tree/testing --debug
```

**Plus d’infos sur le packaging d’applications :** <https://yunohost.org/packaging_apps>
