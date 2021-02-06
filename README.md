# Collabora for YunoHost

[![Integration level](https://dash.yunohost.org/integration/collabora.svg)](https://dash.yunohost.org/appci/app/collabora) ![](https://ci-apps.yunohost.org/ci/badges/collabora.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/collabora.maintain.svg)  
[![Install Collabora with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=collabora)

> *This package allow you to install Collabora quickly and simply on a YunoHost server.  
If you don't have YunoHost, please see [here](https://yunohost.org/#/install) to know how to install and enjoy it.*

## Overview

[Collabora](https://www.collaboraoffice.com/code/) is an online office suite usable with Nextcloud.

**Shipped version:** 6.4.4

## Screenshots

![](https://www.collaboraoffice.com/wp-content/uploads/2019/07/Collabora_Online_-_versions_integration.png)

## Configuration

## Documentation

 * Official documentation: https://www.collaboraoffice.com/code/
 * YunoHost documentation: https://yunohost.org/#/app_collabora

#### Multi-users support

#### Supported architectures

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/collabora%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/collabora/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/collabora%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/collabora/)

## Limitations

ARM platform not supported.
CODE has a warning limitation

![](https://www.libreoffice.org/assets/Uploads/LibreOffice-Online-limit.png)

## Additionnal informations

**Upgrade this package:** 
You can use your YunoHost admin interface, or the command line: `sudo yunohost app upgrade collabora -u https://github.com/YunoHost-Apps/collabora_ynh --debug`

**Settings:**
The settings of Collabora are at https://office.domain.tld/loleaflet/dist/admin/admin.html.

- User: admin
- Password: The password set during the installation. (If you forgot it, you can find it again in `/etc/loolwsd/loolwsd.xml`).

## Links

 * Report a bug: https://github.com/YunoHost-Apps/collabora_ynh/issues
 * Collabora website: https://www.collaboraoffice.com/
 * YunoHost website: https://yunohost.org/

---

## Developers infos

Please do your pull request to the [testing branch](https://github.com/YunoHost-Apps/collabora_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/YunoHost-Apps/collabora_ynh/tree/testing --debug
or
sudo yunohost app upgrade collabora -u https://github.com/YunoHost-Apps/collabora_ynh/tree/testing --debug
```
