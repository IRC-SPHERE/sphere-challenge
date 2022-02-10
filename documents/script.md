# Activity Script

The task for the SPHERE challenge is to predict posture and ambulation labels given the sensor data from the recruited participants.

We will henceforth refer to posture/ambulation as 'activity recognition' for brevity. It is worth noting that the term activity recognition has different interpretations when viewed from accelerometer, video, and environmental sensor perspectives. The definition of activities used in challenge most closely aligns to the terminology used in the field of accelerometer-based prediction.

Twenty (posture/ambulation) activities labels are annotated in our dataset, and these are enumerated below together with short descriptions:

- a_ascend: ascent of stairs;
- a_descend: descent of stairs;
- a_jump: jump;
- a_loadwalk: walk with load;
- a_walk: walk;
- p_bent: bending;
- p_kneel: kneeling;
- p_lie: lying;
- p_sit: sitting;
- p_squat: squatting;
- p_stand: standing;
- t_bend: stand-to-bend;
- t_kneel stand: kneel-to-stand;
- t_lie_sit: lie-to-sit;
- t_sit_lie: sit-to-lie;
- t_sit_stand: sit-to-stand;
- t_stand_kneel: stand-to-kneel;
- t_stand_sit: stand-to-sit;
- t_straighten: bend-to-stand; and
- t_turn: turn
 
The first stage of the challenge uses sensor data that was recorded when the participants performed a pre-defined script. This script used for instruction of participants undertaking the scripted activities can be downloaded from [here](https://raw.githubusercontent.com/IRC-SPHERE/sphere-challenge/master/documents/data_collection_script.pdf)
