## Configuration

**Settings:**
The settings of Collabora are at `https://office.domain.tld/loleaflet/dist/admin/admin.html`.

- User: admin
- Password: The password set during the installation. (If you forgot it, you can find it again in `/etc/coolwsd/coolwsd.xml`).

## Connexion to Nextcloud

If you want to connect with Nextcloud, you have to install the [Collabora Online](https://apps.nextcloud.com/apps/richdocuments) app in Nextcloud, and configure it with the domain of your Collabora installation.

*:warning: There are several Collabora Online apps. Be sure **not** to install the `Collabora Online - Built-in CODE server` apps, which are a lightwheigt version of this Collabora package. :warning:*

## Limitations

**ARM platform not supported.** If you want to run Collabora on Nextcloud, there is a lightweight version of the Collabora server for ARM, called [Collabora Online - Built-in CODE Server (ARM64)](https://apps.nextcloud.com/apps/richdocumentscode_arm64) which can easily connect with the [Collabora Online](https://apps.nextcloud.com/apps/richdocuments) app.

**CODE has a warning limitation**

![](https://www.libreoffice.org/assets/Uploads/LibreOffice-Online-limit.png)
