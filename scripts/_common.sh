#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

# Activate ttf-mscorefonts
mscorefonts_activate(){
    ynh_apt_install_dependencies_from_extra_repository --repo="deb http://deb.debian.org/debian bookworm contrib non-free non-free-firmware" --package="ttf-mscorefonts-installer" --key="https://ftp-master.debian.org/keys/archive-key-12.asc"

    ynh_print_info "microsoft fonts installed"
}

# Deactivate ttf-mscorefonts
mscorefonts_deactivate(){
	apt remove --purge ttf-mscorefonts-installer
	fc-cache -rv
	ynn_safe_rm /etc/apt/sources.list.d/collabora.list

	ynh_print_info "microsoft fonts removed"
}

# Reload templates
coolconfig_update_system_template(){
	coolconfig update-system-template
}