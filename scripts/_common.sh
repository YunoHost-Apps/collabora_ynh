#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

# Activate ttf-mscorefonts
mscorefonts_activate() {

    if [[ $YNH_DEBIAN_VERSION == "bookworm" ]]; then
        ynh_apt_install_dependencies_from_extra_repository --repo="deb https://deb.debian.org/debian bookworm contrib non-free-firmware" --package="ttf-mscorefonts-installer" --key="https://ftp-master.debian.org/keys/archive-key-12.asc"
        fc-cache -rv
    elif [[ $YNH_DEBIAN_VERSION == "trixie" ]]; then
        ynh_apt_install_dependencies_from_extra_repository --repo="deb https://deb.debian.org/debian trixie contrib non-free-firmware" --package="ttf-mscorefonts-installer" --key="https://ftp-master.debian.org/keys/archive-key-13.asc"
        fc-cache -rv
    fi

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

# Add italian dict
italiandict_activate() {
    ynh_apt_install_dependencies_from_extra_repository --repo="deb https://www.collaboraoffice.com/repos/CollaboraOnline/CODE-deb ./" --package="collaboraoffice-dict-it" --key="https://collaboraoffice.com/downloads/gpg/collaboraonline-release-keyring.gpg"

    ynh_print_info "Collabora italian dictionary installed"
}

# Add spanish dict
spanishdict_activate() {
    ynh_apt_install_dependencies_from_extra_repository --repo="deb https://www.collaboraoffice.com/repos/CollaboraOnline/CODE-deb ./" --package="collaboraoffice-dict-es" --key="https://collaboraoffice.com/downloads/gpg/collaboraonline-release-keyring.gpg"

    ynh_print_info "Collabora spanish dictionary installed"
}

# Add portuguese dict
portuguesedict_activate() {
    ynh_apt_install_dependencies_from_extra_repository --repo="deb https://www.collaboraoffice.com/repos/CollaboraOnline/CODE-deb ./" --package="collaboraoffice-dict-pt" --key="https://collaboraoffice.com/downloads/gpg/collaboraonline-release-keyring.gpg"

    ynh_print_info "Collabora portuguese dictionary installed"
}

# Add dutch dict
dutchdict_activate() {
    ynh_apt_install_dependencies_from_extra_repository --repo="deb https://www.collaboraoffice.com/repos/CollaboraOnline/CODE-deb ./" --package="collaboraoffice-dict-nl" --key="https://collaboraoffice.com/downloads/gpg/collaboraonline-release-keyring.gpg"

    ynh_print_info "Collabora dutch dictionary installed"
}

# Add russian dict
russiandict_activate() {
    ynh_apt_install_dependencies_from_extra_repository --repo="deb https://www.collaboraoffice.com/repos/CollaboraOnline/CODE-deb ./" --package="collaboraoffice-dict-ru" --key="https://collaboraoffice.com/downloads/gpg/collaboraonline-release-keyring.gpg"

    ynh_print_info "Collabora russian dictionary installed"
}


# Reload templates
coolconfig_update_system_template() {
	coolconfig update-system-template
	ynh_systemctl --service="coolwsd" --action=restart --log_path="systemd" --wait_until="Ready to accept connections"
}