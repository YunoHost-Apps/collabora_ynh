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

dict_activate() {
    local lang="$1"
    ynh_apt_install_dependencies_from_extra_repository --repo="deb https://www.collaboraoffice.com/repos/CollaboraOnline/CODE-deb ./" --package="collaboraoffice-dict-$lang" --key="https://collaboraoffice.com/downloads/gpg/collaboraonline-release-keyring.gpg"

    ynh_print_info "Collabora's $lang dictionary installed"
}

# Reload templates
coolconfig_update_system_template() {
	coolconfig update-system-template
	ynh_systemctl --service="coolwsd" --action=restart --log_path="systemd" --wait_until="Ready to accept connections"
}
