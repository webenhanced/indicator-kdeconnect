Note
-----
I am no longer maintaining this project, since I am no longer an Android user, I hope that someone else will be able to continue this, now a big thank you to everyone who somehow helped to develop this project, either with code, images, translations, bug reporting, packaging and distribution.

KDE Connect Indicator
=====================
[![Translation Status](https://hosted.weblate.org/widgets/indicator-kde-connect/-/svg-badge.svg)](https://hosted.weblate.org/engage/indicator-kde-connect/?utm_source=widget)
[![Build Status](https://travis-ci.org/Bajoja/indicator-kdeconnect.svg?branch=master)](https://travis-ci.org/Bajoja/indicator-kdeconnect)

![indicator-kdeoconnect](https://raw.githubusercontent.com/Bajoja/indicator-kdeconnect/master/data/images/indicator-kdeconnect.jpg)

This Indicator is written to make [KDE Connect](https://community.kde.org/KDEConnect) usable in desktops without KDE Plasma, such as Ubuntu Unity and Pantheon.
It started as an [AppIndicator](https://unity.ubuntu.com/projects/appindicators/), but you can send files and URLs easily through KDE Connect with sendvia-kdeconnect.

Features
-------
 1. Indicator in the panel which show your devices, with its name, status, and battery.
 2. Menu to request for pairing and unpairing.
 3. Menu to accept and reject pairing
 4. Menu to start SFTP and open a file browser.
 5. Menu to send files.
 6. Menu to send URLs.
 7. Menu to send SMS.
 8. Menu to ring and find your phone.
 9. From the device battery menu item you can open KDE Connect settings.
 10. A Window, `indicator-kdeconnect -c` to help sending files and choosing device.
 11. A .contractor file, so you can send files from any of elementary OS's applications.
 12. A .desktop file, so you can send files from file manager like Thunar.
 13. Python extensions for Nautilus, Nemo and Caja, you can send files directly from them.

Compatibility
-------
Any desktop that supports KStatusNotifierItem/AppIndicator icons should just work – Budgie, Cinnamon, LXDE, Pantheon, Unity, and many others.
The only major oddball is Gnome where you need an additional [Gnome Shell extension](https://extensions.gnome.org/extension/615/appindicator-support/) for proper support.

Another solution for Gnome Shell is consider to use [KDE Connect implementation for Gnome Shell 3.24+](https://github.com/andyholmes/gnome-shell-extension-gsconnect). It's a full integrated extension with the same features.

After changes on KDE Connect this will work only in KDE Connect 1.3.0 and up which can be problematic on Linux distributions released before August 2016.

Installation
-------
- Arch Linux
 There is a package available in the [AUR](https://aur.archlinux.org/packages/indicator-kdeconnect-git)

- Fedora and OpenSUSE [Visit](https://software.opensuse.org//download.html?project=home%3ABajoja&package=indicator-kdeconnect) and select your operating system.

- Ubuntu and Linux Mint
 Ubuntu 16.04, 16.10, 17.04 and Linux Mint 18.1 users can use this PPA:
```
sudo add-apt-repository ppa:webupd8team/indicator-kdeconnect
sudo apt update
sudo apt install kdeconnect indicator-kdeconnect
```
OBS: This PPA is outdated, looking for new maintainer

- Flatpak  
  Flatpak source can be found [here](https://github.com/flathub/com.github.bajoja.indicator-kdeconnect)

- From the Source  
  Check the INSTALL file

Usage Suggestions
-------
 To make life better you can try to apply this:

 1. Add KDE Connect Indicator to your startup applications, on your System Setting if is not.
 2. Nautilus, Nemo, Caja, Pantheon-files and Thunar users have native extensions installed by default, make sure you have,
    `python-nautilus`, `python-nemo` or `python-caja` installed to use it.
 3. If your files manager is not supported by extensions create a action entry with `indicator-kdeconnect -c %F` as command.
    Or you can use the script present on the [scripts folder](https://github.com/Bajoja/indicator-kdeconnect/tree/master/scripts/kdeconnect-send), adding it to your file manager script folder.
 4. If you want to change settings for indicator-kdeconnect use `indicator-kdeconnect -s`.
 5. If you are having troubles under Wayland install this [script](https://github.com/Bajoja/indicator-kdeconnect/tree/master/scripts/wayland). 


Please report issues and suggestion [here](https://github.com/Bajoja/indicator-kdeconnect/issues)

And help translate this project [here](https://hosted.weblate.org/projects/indicator-kde-connect/translations/)
