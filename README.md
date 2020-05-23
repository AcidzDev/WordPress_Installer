<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]



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

Distributed under the MIT License. See `LICENSE` for more information.



<!-- CONTACT -->
## Contact

Jamie McInnes - [@AcidzDesigns](https://twitter.com/AcidzDesigns)

Project Link: [https://github.com/github_username/repo](https://github.com/github_username/repo)




<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/othneildrew/Best-README-Template.svg?style=flat-square
[contributors-url]: https://github.com/othneildrew/Best-README-Template/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/othneildrew/Best-README-Template.svg?style=flat-square
[forks-url]: https://github.com/othneildrew/Best-README-Template/network/members
[stars-shield]: https://img.shields.io/github/stars/othneildrew/Best-README-Template.svg?style=flat-square
[stars-url]: https://github.com/othneildrew/Best-README-Template/stargazers
[issues-shield]: https://img.shields.io/github/issues/othneildrew/Best-README-Template.svg?style=flat-square
[issues-url]: https://github.com/othneildrew/Best-README-Template/issues
[license-shield]: https://img.shields.io/github/license/othneildrew/Best-README-Template.svg?style=flat-square
[license-url]: https://github.com/othneildrew/Best-README-Template/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=flat-square&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/othneildrew
[product-screenshot]: images/screenshot.png
