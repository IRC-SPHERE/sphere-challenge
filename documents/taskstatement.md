# Statement of the task

The task is to predict the posture and ambulation for every second of the test data using the sensor data provided. Training data will be in the form of long sequences of data (tens of minutes in length), while test data will be short sequences of length 10-30 seconds.&nbsp;<br /><br />sample submission.csv contains an example submission file. Each row should follow the Comma Separated Values (CSV) format below. In this enumerated list, the the number indicates the column index of the CSV file.

- test_record_id
- start_time
- end_time
- Pr(a_ascend)
- Pr(a_descend)
- Pr(a_jump)
- Pr(a_loadwalk)
- Pr(a_walk)
- Pr(p_bent)
- Pr(p_kneel)
- Pr(p_lie)
- Pr(p_sit)
- Pr(p_squat)
- Pr(p_stand)
- Pr(t_bend)
- Pr(t_kneel_stand)
- Pr(t_lie_sit)
- Pr(t_sit_lie)
- Pr(t_sit_stand)
- Pr(t_stand_kneel)
- Pr(t_stand_sit)
- Pr(t_straighten)
- Pr(t_turn)

Here, *test_record* id is the name of the test directory, *start_time* and *end_time* are time stamps indicating the window over which prediction is to be made (note that the difference between end time and start time will always be 1 sec), and Pr(.) is the predicted probability of each activity during the window. As an example, we would expect 10 predictions for a sequence of length 10 seconds. Example code that generated sample_submission.csv can be found <a href=\"https://github.com/IRC-SPHERE/sphere-challenge/blob/master/sample_submission.py\">here</a>.

The activity codes are detailed in the challenge [homepage](home.md). 

Classification performance is evaluated with the Brier score. See the [performance evaluation](evaluation.md) section for futher information.

## Challenge hosted by drivendata.org

We are delighted to announce that the SPHERE Challenge, which takes place in conjunction with ECML-PKDD 2016, is now hosted at [DrivenData](https://www.drivendata.org/competitions/sphere). All challenge features (including the leaderboard, forum, and user/team registration) are now managed at the drivendata website. 


## Using this Data

The paper below provides a full description of the data and the data formats, and and any use of the data must cite this:

### Reference

Niall Twomey, Tom Diethe, Meelis Kull, Hao Song, Massimo Camplani, Sion Hannuna, Xenofon Fafoutis, Ni Zhu, Pete Woznowski, Peter Flach, and Ian Craddock. The SPHERE Challenge: Activity Recognition with Multimodal Sensor Data. 2016.

BibTeX

`@article{twomey2016sphere, title={The {SPHERE}&nbsp;Challenge: Activity Recognition with Multimodal Sensor Data},&nbsp;author={Twomey, Niall and Diethe, Tom and Kull, Meelis and Song, Hao and Camplani, Massimo and Hannuna, Sion and Fafoutis, Xenofon and Zhu, Ni and Woznowski, Pete and Flach, Peter and others}, journal={arXiv preprint arXiv:1603.00797}, year={2016}}`

## Contact Information

For any questions regarding the data, please contact: spherechallengeecml[at]gmail.com
