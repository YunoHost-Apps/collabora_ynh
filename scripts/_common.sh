#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

# Activate ttf-mscorefonts
mscorefonts_activate() {
    ynh_apt_install_dependencies_from_extra_repository --repo="deb http://deb.debian.org/debian bookworm contrib non-free-firmware" --package="ttf-mscorefonts-installer" --key="https://ftp-master.debian.org/keys/archive-key-12.asc"
    fc-cache -rv

    ynh_print_info "Microsoft fonts installed"
}

# Deactivate ttf-mscorefonts
mscorefonts_desactivate() {
    apt purge ttf-mscorefonts-installer -y
    fc-cache -rv

    ynh_print_info "Microsoft fonts removed"
}

# Add french dict
frenchdict_activate() {
    ynh_apt_install_dependencies_from_extra_repository --repo="deb https://www.collaboraoffice.com/repos/CollaboraOnline/CODE-deb ./" --package="collaboraoffice-dict-fr" --key="https://collaboraoffice.com/downloads/gpg/collaboraonline-release-keyring.gpg"

    ynh_print_info "Collabora french dictionary installed"
}

# Add german dict
germandict_activate() {
    ynh_apt_install_dependencies_from_extra_repository --repo="deb https://www.collaboraoffice.com/repos/CollaboraOnline/CODE-deb ./" --package="collaboraoffice-dict-de" --key="https://collaboraoffice.com/downloads/gpg/collaboraonline-release-keyring.gpg"

    ynh_print_info "Collabora german dictionary installed"
}

# Add english dict
englishdict_activate() {
    ynh_apt_install_dependencies_from_extra_repository --repo="deb https://www.collaboraoffice.com/repos/CollaboraOnline/CODE-deb ./" --package="collaboraoffice-dict-en" --key="https://collaboraoffice.com/downloads/gpg/collaboraonline-release-keyring.gpg"

    ynh_print_info "Collabora english dictionary installed"
}

# Reload templates
coolconfig_update_system_template() {
	coolconfig update-system-template
	ynh_systemctl --service="coolwsd" --action=restart --log_path="systemd" --wait_until="Ready to accept connections"
}