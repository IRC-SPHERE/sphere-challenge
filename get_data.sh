#!/usr/bin/env bash
## title          :get_data
## description    :Script to download and unzip the SPHERE challenge dataset:
##                  Activity recognition with multimodal sensor data.
## author         :Miquel Perello Nieto
## date           :20161004
## version        :0.1
## usage          :get_data.sh
## notes          :Downloads and unzips the SPHERE Challenge dataset
## bash_version   :GNU bash, version 4.3.11(1)-release (x86_64-pc-linux-gnu)

download_url="http://data.bris.ac.uk/datasets/8gccwpx47rav19vk8x4xapcog/8gccwpx47rav19vk8x4xapcog.zip"
zip_file="${download_url##*/}"
data_folder="public_data"
meta_folder="public_data/metadata"

mkdir -p ${data_folder}
mkdir -p ${meta_folder}

cd ${data_folder}
# Download if local file does not exist
wget --no-clobber ${download_url}

# Unzip in current folder
unzip -j ${zip_file}

rm ${zip_file}
# Unzip all the zip files
unzip \*.zip
rm ./*.zip
