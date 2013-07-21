Vagrant Drupal
==============

Drupal specific vagrant configured virtual box. Create a virtual box configured on 33.33.33.36 and
on the domain local.drupal.org. The installation script will automatically try to add the domain
to the local hosts file. After the box boots the script will shell in and:

 * Create the drupal database.
 * Install drupal.
 * Install and enable modules: devel.
 * Disable modules: overlay.

#### Prerequisites ####

1. Download and install install virtualbox for [Windows](http://download.virtualbox.org/virtualbox/4.2.6/VirtualBox-4.2.6-82870-Win.exe) or [Mac](http://download.virtualbox.org/virtualbox/4.2.6/VirtualBox-4.2.6-82870-OSX.dmg).
2. Download and install vagrant for [Windows](http://files.vagrantup.com/packages/476b19a9e5f499b5d0b9d4aba5c0b16ebe434311/Vagrant.msi) or [Mac](http://files.vagrantup.com/packages/476b19a9e5f499b5d0b9d4aba5c0b16ebe434311/Vagrant.dmg)
3. If you are on windows please download and install [Cygwin](http://cygwin.com/setup.exe). See [Cygwin Setup](http://cygwin.com/cygwin-ug-net/setup-net.html#setup-packages) for help. Make sure to install ssh and git packages.

#### Installation ####

Copy and paste this into your shell to install everything.

```
curl https://gist.github.com/delphian/6048720/download | tar -xz --strip-components=1 && chmod u+x \
./install-vagrant-drupal-d7.sh && ./install-vagrant-drupal-d7.sh
```
