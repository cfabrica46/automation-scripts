# Update-All

The command  is divided into 5 parts, which are:

- ```sudo apt -y update```
- ```sudo apt -y upgrade```
- ```sudo apt dist-upgrade```
- ```sudo apt autoclean```
- ```sudo apt autoremove```

> Note: The flag '-y' is used to enable the update automatically.

1. ```sudo apt -y update``` is used to download package information from all configured sources. The sources often defined in the /etc/apt/sources.
2. ```sudo apt -y upgrade``` is used to downloads and installs the updates for each outdated package and dependency on your system.
3. ```sudo apt dist-upgrade``` it will intelligently install or remove packages as needed, in order to complete the upgrade. Apt-get dist-upgrade has a smart conflict resolution system
4. ```sudo apt autoremove``` remove those missing packages, usually installed as dependencies of other installations, that are no longer needed
5. ```sudo apt autoclean``` we remove from the local repository, the cache, the packages of old and useless versions.
