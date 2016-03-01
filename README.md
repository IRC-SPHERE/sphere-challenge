# SPHERE Challenge: Activity Recognition with Multimodal Sensor Data 

All use of the data must cite the following: 

Twomey N. and Diethe T. and Kull M. and Hannuna S. and Camplani M. and Song H. and Fafoutis X. and Zhu N. and Woznowski P. and Flach P. and Craddock I. _The SPHERE Challenge: Activity Recognition with Multimodal Sensor Data_. 2016.

This dataset has an associated homepage (http://irc-sphere.ac.uk/sphere-challenge/home), with the following pages

* [Prizes and Timelines](http://irc-sphere.ac.uk/sphere-challenge/prizes)
* [Task Statement](http://irc-sphere.ac.uk/sphere-challenge/task)
* [Annotations](http://irc-sphere.ac.uk/sphere-challenge/annotation)
* [Sensor Description](http://irc-sphere.ac.uk/sphere-challenge/sensors)
* [Data Formats](http://irc-sphere.ac.uk/sphere-challenge/data)
* [Evaluation Metrics](http://irc-sphere.ac.uk/sphere-challenge/evaluation)
* [Challenge Rules](http://irc-sphere.ac.uk/sphere-challenge/rules)

Furthermore, some scripts for visualising the data can be found in the challenge github repository: https://github.com/IRC-SPHERE/sphere-challenge

## INTRODUCTION

The task of this challenge is to predict aspects the activities of residents within a smart home based only on observed sensor data. Sensor data are obtained from the following three sensing modalities:

* A wrist-worn accelerometer
* Video + Depth (RGB-D)
* Passive environmental presence sensors

The data and file formats are described in the following section. 

## DATA

Training data and testing data can be found in the ‘train’ and ‘test’ subdirectories respectively. The recorded data are collected under unique codes (each recording will be referred to as a ‘data sequence’). Timestamps are rebased to be relative to the start of the sequences, i.e. for a sequence of length 10 seconds, all timestamps will be within the range 0-10 seconds. 

Each data sequence contains the following files:

* targets.csv (available only with training data)
* pir.csv
* video\_hallway.csv
* video\_living\_room.csv
* video\_kitchen.csv

The following files are also available within the training directory:

* annotations\_*.csv
* aocations\_*.csv

The data from _annotations\_*.csv_ is used to create the targets.csv file, and _locations\_*.csv_ files are availablef or participants that want to model indoor localisation. These are only available for the training set.

The dataset may be downloaded from data.bris: https://data.bris.ac.uk/data/

### targets.csv (available in train only)

This file contains the probabilistic targets for classification. Multiple annotators may have annotated each sequence, and this file aggregates all of the annotations over one second windows. The mean duration of each label within this window is used as the target variable. 

The following 20 activities are labelled:

annotation\_names = ('a\_ascend', 'a\_descend', 'a\_jump', 'a\_loadwalk', 'a\_walk', 'p\_bent', 'p\_kneel', 'p\_lie', 'p\_sit', 'p\_squat', 'p\_stand', 't\_bend', 't\_kneel\_stand', 't\_lie\_sit', 't\_sit\_lie', 't\_sit\_stand', 't\_stand\_kneel', 't\_stand\_sit', 't\_straighten', 't\_turn')

The prefix ‘a\_’ indicates an ambulation activity (i.e. an activity consisting of continuing movement), ‘p\_’ annotations indicate static postures (i.e. times when the participants are stationary), and ‘t\_’ annotations indicate posture-to-posture transitions.

This file contains of 22 columns:

* start: The starting time of the window
* end: The ending time of the window
* targets: Columns 3-22: the 20 probabilistic targets.



### pir.csv (available for train and test)

This file contains the start time and duration for all PIR sensors in the smart environment. A PIR sensor is located in every room:

pir\_locations = ('bath', 'bed1', 'bed2', 'hall', 'kitchen', 'living', 'stairs', 'study', 'toilet')

The columns of this CSV file are:

* start: the start time of the PIR sensor (relative to the start of the sequence)
* end: the end time of the PIR sensor (relative to the start of the sequence)
* name: the name of the PIR sensor being activated (from the above list)
* index: the index of the activated sensor from the pir\_locations list starting at 0



### acceleration.csv (available for train and test)

The acceleration file consists of eight columns:

* t: this is the time of the recording (relative to the start of the sequence)
* x/y/z: these are the acceleration values recorded on the x/y/z axes of the accelerometer.
* Kitchen\_AP/Lounge\_AP/Upstairs\_AP/Study\_AP: these specify the received signal strength (RSSI) of the acceleration signal as received by the access kitchen/lounge/upstairs access points. Empty values indicate that the access point did not receive the packet.



### video\_*.csv (available for train and test)

The following columns are found in the video\_hallway.csv, video\_kitchen.csv and video\_living\_room.csv files:

* t: The current time (relative to the start of the sequence)
* centre\_2d\_x/centre\_2d\_y: The x- and y-coordinates of the center of the 2D bounding box.
* bb\_2d\_br\_x/bb\_2d\_br\_y: The x and y coordinates of the bottom right (br) corner of the 2D bounding box
* bb\_2d\_tl\_x/bb\_2d\_tl\_y: The x and y coordinates of the top left (tl) corner of the 2D bounding box
* centre\_3d\_x/centre\_3d\_y/centre\_3d\_z: the x, y and z coordinates for the center of the 3D bounding box
* bb\_3d\_brb\_x/bb\_3d\_brb\_y/bb\_3d\_brb\_z: the x, y, and z coordinates for the bottom right back corner of the 3D bounding box
* bb\_3d\_flt\_x/bb\_3d\_flt\_y/bb\_3d\_flt\_z: the x, y, and z coordinates of the front left top corner of the 3D bounding box.
 


## SUPPLEMENTARY FILES

The following two sets of file need not be used for the challenge, but are included to facilitate users that wish to perform additional modelling of the sensor environment.


### locations\_*.csv (available in train only)

This labels the room that is currently occupied by the recruited participant. The following rooms are labelled:

location\_names = ('bath', 'bed1', 'bed2', 'hall', 'kitchen', 'living', 'stairs', 'study', 'toilet')

Locations.csv contains the following four columns:

* start: the time a participant entered a room (relative to the start of the sequence)
* end: the time the participant left the room (relative to the start of the sequence)
* name: the name of the room (from the above list)
* index: the index of the room name starting at 0


### annotations\_*.csv (available in train only)
The following 20 activities are annotated:

annotation\_names = ('a\_ascend', 'a\_descend', 'a\_jump', 'a\_loadwalk', 'a\_walk', 'p\_bent', 'p\_kneel', 'p\_lie', 'p\_sit', 'p\_squat', 'p\_stand', 't\_bend', 't\_kneel\_stand', 't\_lie\_sit', 't\_sit\_lie', 't\_sit\_stand', 't\_stand\_kneel', 't\_stand\_sit', 't\_straighten', 't\_turn')

As before, the prefix ‘a\_’ indicates an ambulation activity (i.e. an activity consisting of continuing movement), ‘p\_’ annotations indicate static postures (i.e. times when the participants are stationary), and ‘t\_’ annotations indicate posture-to-posture transitions.

Annotations.csv contains the following four columns:

* start: the start time of the activity (relative to the start of the sequence)
* end: the end time of the activity (relative to the start of the sequence)
* name: the name of the label (from the above list)
* index: the index of the label name starting at 0



