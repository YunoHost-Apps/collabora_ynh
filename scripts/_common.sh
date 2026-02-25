#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

# Activate ttf-mscorefonts
mscorefonts_activate(){
    ynh_apt_install_dependencies_from_extra_repository --repo="deb http://deb.debian.org/debian bookworm contrib non-free non-free-firmware" --package="ttf-mscorefonts-installer" --key="https://ftp-master.debian.org/keys/archive-key-12.asc"
    fc-cache -rv

    ynh_print_info "microsoft fonts installed"
}

# Deactivate ttf-mscorefonts
mscorefonts_deactivate(){
	apt-get remove ttf-mscorefonts-installer -y
    fc-cache -rv

	ynh_print_info "microsoft fonts removed"
}


# Reload templates
coolconfig_update_system_template(){
	coolconfig update-system-template
}