<!-- ABOUT THE PROJECT -->
## About The Project
Script was created to auto install a wordpress virtual host on NGINX. Script will also setup SSL certs with Certbot.


<!-- GETTING STARTED -->
## Getting Started

Before you start the installer, you will need to have a webserver stack installed. Use my Stack installer script
[Web Server Installer](https://github.com/AcidzDev/Ubuntu-LEMP-Installer.git)

Website URL must be setup with the correct DNS records that point to your web server. Invalid DNS record will cause CertBot to fail
Multiple attempts of SSL generation will put a hold on your URL and Certbot and it will take 24 hours for the hold to be lifted




### Installation

1. Clone the repo
```sh
git clone https://github.com/AcidzDev/WordPress_Installer.git
```
2. CD to script folder
```sh
cd WordPress_Installer
```
3. Start The Script
```sh
sudo ./installer.sh
```



<!-- USAGE EXAMPLES -->
## Usage
Once the installer has finished, navigate to your web site URL to complete the wordpress install


<!-- LICENSE -->
## License

Distributed under the GPLv3  License.



<!-- CONTACT -->
## Contact

Jamie McInnes - [@AcidzDesigns](https://twitter.com/AcidzDesigns)

Project Link: [https://github.com/github_username/repo](https://github.com/github_username/repo)


