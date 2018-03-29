# Supervised classificatios with GRASS shellscript

It is a straight-forward Remote Sensing Image classification algorithm.

## Getting Started

If you have an Ubuntu machine with UbuntuGIS installed, a Remote Sensed image and a AOI file, just download the script and run it, that's it!

### Prerequisites

Beforehand you will need a Linux machine with Ubuntu and installed GRASS GIS and Ubuntugis tools to be installed. You will find the installation commands in the provided script.

### Installing

So, first things first, if you have a Linux machine but not the rest of prerequisites you will need to run the following commands

For the UbuntuGIS and GRASS GIS:
```
sudo add-apt-repository ppa:ubuntugis/ubuntugis-unstable
sudo apt-get update
```
In case it didn't work execute:

```
sudo apt-get upgrade
sudo add-apt-repository ppa:ubuntugis/ubuntugis-unstable
sudo apt-get update
```

## Running the tests

The only thing that you will need to do after downloading the script is to give permission to the script to be executed...and
execute it. 

To do that, open your terminal and type in the following commands:

```
sudo cd /path/to/script
sudo chmod +x supclass_auto.sh
sudo ./supclass_auto.sh
```
*WARNING*: because of the resent updates lines 85 and 86 don't work comment them out using the "#" symbol.

## Built With

* [GRASS GIS](https://grass.osgeo.org/) - The GIS framework
* [Ubuntu](https://www.ubuntu.com/) - OS userd
* [Shellscript](https://www.shellscript.sh/) - A source of shell script tutorials


## Authors

* **KarlesP** - *Initial work* - [Mr Koios](https://github.com/KarlesP)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments
* This script was based on the classification tutorial for GRASS GIS [source](https://grasswiki.osgeo.org/wiki/Image_classification)
