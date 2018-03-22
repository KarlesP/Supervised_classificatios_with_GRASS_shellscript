#!/bin/sh
export GISBASE=/usr/lib/grass72
export GRASS_VERSION=72

#echo -n "Enter extension directory (i.e /usr/lib/grass70/grass-addons):"
#read EXT_ADDONS
#sudo mkdir $EXT_ADDONS
#export GRASS_ADDON_BASE=$EXT_ADDONS
#echo -n "Enter username and group (i.e user:user):"
#read userng
#sudo chown -R $userng $EXT_ADDONS
#sudo chmod u=rwx $EXT_ADDONS
#export GRASS_ADDON_BASE=$EXT_ADDONS

#generate GISRCRC
MYGISDBASE=/home/user/working/GISDATA/GrassDirecotry/
MYLOC=Thesis
MYMAPSET=user

# Set the global grassrc file to individual file name
MYGISRC="$HOME/.grassrc.$GRASS_VERSION.$$"

echo "GISDBASE: $MYGISDBASE" > "$MYGISRC"
echo "LOCATION_NAME: $MYLOC" >> "$MYGISRC"
echo "MAPSET: $MYMAPSET" >> "$MYGISRC"
echo "GRASS_GUI: text" >> "$MYGISRC"
 
# path to GRASS settings file
export GISRC=$MYGISRC
export GRASS_PYTHON=python
export GRASS_MESSAGE_FORMAT=plain
export GRASS_TRUECOLOR=TRUE
export GRASS_TRANSPARENT=TRUE
export GRASS_PNG_AUTO_WRITE=TRUE
export GRASS_GNUPLOT='gnuplot -persist'
export GRASS_WIDTH=640
export GRASS_HEIGHT=480
export GRASS_HTML_BROWSER=firefox
export GRASS_PAGER=cat
export GRASS_WISH=wish
        
export PATH="$GISBASE/bin:$GISBASE/scripts:$PATH"
export LD_LIBRARY_PATH="$GISBASE/lib"
export GRASS_LD_LIBRARY_PATH="$LD_LIBRARY_PATH"
export PYTHONPATH="$GISBASE/etc/python:$PYTHONPATH"
export MANPATH=$MANPATH:$GISBASE/man

#For the temporal modules
export TGISDB_DRIVER=sqlite
export TGISDB_DATABASE=$MYGISDBASE/$MYLOC/PERMANENT/tgis/sqlite.db

# =============== START WORKING ================================

# Import Raster Data
echo -n "Enter Sentinel raster data path (with the 4 bands and 10m resolution): "
read rast
echo -n "Enter trainbing vector data path: "
read vect
#r.import input=$rast output=sentinel --overwrite
#v.import -o input=$vect output=training encoding=UTF-8 --overwrite
#g.region rast=sentinel.1 save=region --overwrite
#v.to.rast input=training@user output=training_rast use=att attribute_column=cat
#g.rename raster=sentinel.1,BLUE
#g.rename raster=sentinel.2,GREEN
#g.rename raster=sentinel.3,RED
#g.rename raster=sentinel.4,NIR
#i.group  group=sup_class subgroup=sup input=BLUE,GREEN,RED
#g.gui.iclass group=sup_class subgroup=sup map=RED trainingmap=training 
#echo -n "Enter path for signature file:"
#read sigs
#i.gensigset trainingmap=training group=sup_class subgroup=sup signaturefile=$sigs
#echo -n "Enter path for classification resaults:"
#read res
#i.smap group=sup_class subgroup=sup signaturefile=$sigs"smap" output=$res"smap" goodness=g_of_f --overwrite
#i.maxlik group=sup_class subgroup=sup signaturefile=$sigs"maxlik" output=$res"maxlik" reject=reject_maxlik --overwrite
#r.kappa -w --overwrite classification=$res"maxlik" reference=training_rast output=outuput
