#!/bin/bash

installed=`apt list --installed | grep $1`

files_to_cut=`cut -d , -f 1 <<<  $installed`

sudo apt-get remove --purge $files_to_cut

