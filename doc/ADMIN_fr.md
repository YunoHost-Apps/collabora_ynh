## Configuration

**Paramètres :**
Les paramètres de Collabora sont à `https://__DOMAIN__/browser/dist/admin/admin.html`.

- Utilisateur : admin
- Mot de passe : Le mot de passe défini lors de l'installation. (Si vous l'avez oublié, vous pouvez le retrouver dans `/etc/coolwsd/coolwsd.xml`).

## Connexion à Nextcloud

Si vous souhaitez vous connecter à Nextcloud, vous devez installer l'application [Collabora Online](https://apps.nextcloud.com/apps/richdocuments) dans Nextcloud, et la configurer avec le domaine de votre installation Collabora.

*:warning: Il existe plusieurs applications Collabora Online. Assurez-vous **de ne pas** installer les applications `Collabora Online - Built-in CODE server`, qui sont une version allégée de ce package Collabora. :warning:*

## Limites

**Plateforme ARM non prise en charge.** Si vous souhaitez exécuter Collabora sur Nextcloud, il existe une version allégée du serveur Collabora pour ARM, appelée [Collabora Online - Built-in CODE Server (ARM64)](https://apps.nextcloud.com/apps/richdocumentscode_arm64) qui peut facilement se connecter à l'application [Collabora Online](https://apps.nextcloud.com/apps/richdocuments).

**CODE a une limitation d'avertissement**

![](https://www.libreoffice.org/assets/Uploads/LibreOffice-Online-limit.png)
