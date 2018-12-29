#!/usr/bin/env sh

flatpak remote-add -v --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak remote-add -v --if-not-exists kde https://distribute.kde.org/kdeapps.flatpakrepo
flatpak remote-add -v --if-not-exists gnome https://sdk.gnome.org/gnome.flatpakrepo

flatpak remote-list -d
