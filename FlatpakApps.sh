#!/bin/bash

# Set flatpak langs. Replace accordingly to your needs
flatpak config languages --set "en;es"

# List of Flatpaks to install
flatpaks=(
    com.google.Chrome 
    com.usebottles.bottles
    io.mpv.Mpv
    org.gimp.GIMP
    org.inkscape.Inkscape
    org.kde.kdenlive
    org.libreoffice.LibreOffice
    org.localsend.localsend_app
    org.telegram.desktop
    org.zotero.Zotero
    # Add more packages here
)

# Install each Flatpak
for package in "${flatpaks[@]}"; do
    flatpak install flathub -y "$package"
done
