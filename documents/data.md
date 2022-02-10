# Data formats

## Directory Structure

Training data and testing data can be found in the **train** and **test** subdirectories respectively. The recorded data are collected under unique codes (each recording will be referred to as a **data sequence**). Timestamps are re-based to be relative to the start of the sequences, i.e. each sequence always starts from t = 0

Each data sequence contains the following essential files:

- targets.csv
- pir.csv
- video_hallway.csv
- video_living_room.csv
- video_kitchen.csv
- meta.json
 

Two additional files are also provided in the training sequences:

- `annotations_*.csv`
- `location_*.csv`

The data from `annotations_*.csv` is used to create the targets.csv file. `location_*.csv` is available for participants that want to model the location.

A git repository is publicly available`[1]`. In this repository a number of scripts for visualisation, benchmarking and data processing are available. (All subsequent sensor images were generated using these scripts.)

`[1]` [https://github.com/IRC-SPHERE/sphere-challenge/](https://github.com/IRC-SPHERE/sphere-challenge/)

## targets.csv

This file contains the probabilistic targets for classification. Multiple annotators may have annotated each sequence, and this file aggregates all of the annotations over 1 sec windows. These files can be created from `annotations *.csv`, and the [following script](https://github.com/ IRC-SPHERE/sphere-challenge/blob/master/gen_targets.py) shows how they are generated.

The following 20 activities are labelled:

annotation_names = (\'a_ascend\', \'a_descend\', \'a_jump\', \'a_loadwalk\', \'a_walk\', \'p_bent\', \'p_kneel\', \'p_lie\', \'p_sit\', \'p_squat\', \'p_stand\', \'t_bend\', \'t_kneel_stand\', \'t_lie_sit\', \'t_sit_lie\', \'t_sit_stand\', \'t_stand_kneel\', \'t_stand_sit\', \'t_straighten\', \'t_turn\')

The prefix **a_** indicates an ambulation activity (i.e. an activity consisting of continuing movement), **p_** annotations indicate static postures (i.e. times when the participants are stationary), and **t_* annotations indicate posture-to-posture transitions.


This file contains of 22 columns:

- start: The starting time of the window
- end: The ending time of the window
- target: Columns 3-22: the 20 probabilistic targets.


## pir.csv (train + test)

This file contains the start time and duration for all PIR sensors in the smart environment. A PIR sensor is located in every room:

`pir_locations = ('bath', 'bed1', 'bed2', 'hall', 'kitchen', 'living', 'stairs', 'study', 'toilet')`

The columns of this CSV file are:

- start: the start time of the PIR sensor (relative to the start of the sequence)
- end: the end time of the PIR sensor (relative to the start of the sequence)
- name: the name of the PIR sensor being activated (from the above list)
- Index: the index of the activated sensor from the pir_locations list starting at 0

## acceleration.csv (train + test)

The acceleration file consists of eight columns:

- t: this is the time of the recording (relative to the start of the sequence)
- x/y/z: these are the acceleration values recorded on the x/y/z axes of the accelerometer.
- Kitchen_AP/Lounge_AP/Upstairs_AP/Study_AP: these specify the received signal strength (RSSI) of the acceleration signal as received by the access kitchen/lounge/upstairs access points. Empty values indicate that the access point did not receive the packet.

## `video_*.csv` (train + test)

The following columns are found in the video_hallway.csv, video_kitchen.csv and video_living_room.csv files:

- t: The current time (relative to the start of the sequence)
- centre_2d_x/centre_2d_y: The x and y coordinates of the center of the 2D bounding box.
- bb_2d_br_x/bb_2d_br_y: The x and y coordinates of the bottom right (br) corner of the 2D bounding box
- bb_2d_tl_x/bb_2d_tl_y: The x and y coordinates of the top left (tl) corner of the 2D bounding box
- centre_3d_x/centre_3d_y/centre_3d_z: the x, y and z coordinates for the center of the 3D bounding box
- bb_3d_brb_x/bb_3d_brb_y/bb_3d_brb_z: the x, y, and z coordinates for the bottom right back corner of the 3D bounding box
- bb_3d_flt_x/bb_3d_flt_y/bb_3d_flt_z</strong>: the x, y, and z coordinates of the front left top corner of the 3D bounding box

## Supplementary files

The following two sets of file need not be used for the challenge, but are included to facilitate users that wish to perform additional modelling of the sensor environment.

## `locations_*.csv` (training only)

This labels the room that is currently occupied by the recruited participant. The following rooms are labelled:

`location_names = ('bath', 'bed1', 'bed2', 'hall', 'kitchen', 'living', 'stairs', 'study', 'toilet')`

Locations.csv contains the following four columns:

- start: the time a participant entered a room (relative to the start of the sequence)
- end: the time the participant left the room (relative to the start of the sequence)
- name: the name of the room (from the above list)
- index: the index of the room name starting at 0

## `annotations_*.csv` (training only)

The following 20 activities are annotated:

`annotation_names = ('a_ascend', 'a_descend', 'a_jump', 'a_loadwalk', 'a_walk', 'p_bent', 'p_kneel', 'p_lie', 'p_sit', 'p_squat', 'p_stand', 't_bend', 't_kneel_stand', 't_lie_sit', 't_sit_lie', 't_sit_stand', 't_stand_kneel', 't_stand_sit', 't_straighten', 't_turn')`

As before, the prefix **a_** indicates an ambulation activity (i.e. an activity consisting of continuing movement), **p_** annotations indicate static postures (i.e. times when the participants are stationary), and **t_** annotations indicate posture-to-posture transitions.

Annotations.csv contains the following four columns:

- start: the start time of the activity (relative to the start of the sequence)
- end: the end time of the activity (relative to the start of the sequence)
- name: the name of the label (from the above list)
- index: the index of the label name starting at 0

## Challenge hosted by drivendata.org

We are delighted to announce that the SPHERE Challenge, which takes place in conjunction with ECML-PKDD 2016, is now hosted at [DrivenData](https://www.drivendata.org/competitions/sphere).

All challenge features (including the leaderboard, forum, and user/team registration) are now managed at the drivendata website. 

## Using this Data

The paper below provides a full description of the data and the data formats, and and any use of the data must cite this:

Reference:

Niall Twomey, Tom Diethe, Meelis Kull, Hao Song, Massimo Camplani, Sion Hannuna, Xenofon Fafoutis, Ni Zhu, Pete Woznowski, Peter Flach, and Ian Craddock. The SPHERE Challenge: Activity Recognition with Multimodal Sensor Data. 2016.

```BibTeX
@article{twomey2016sphere, title={The {SPHERE} Challenge: Activity Recognition with Multimodal Sensor Data},author={Twomey, Niall and Diethe, Tom and Kull, Meelis and Song, Hao and Camplani, Massimo and Hannuna, Sion and Fafoutis, Xenofon and Zhu, Ni and Woznowski, Pete and Flach, Peter and others}, journal={arXiv preprint arXiv:1603.00797}, year={2016}}```
