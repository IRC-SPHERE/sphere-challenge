# Challenge Rules


## Evaluation

Performance is evaluated with the Brier score, i.e. 

![Brier score](https://github.com/IRC-SPHERE/sphere-challenge/raw/master/documents/brierscore.png)

where N is the number of test sequences, C is the number of classes, wc is the weight for each class, p_{n,c} is the predicted probability of instance n being from class c, and y_{n,c} is the proportion of annotators that labelled instance n as arising&nbsp;from class c. Lower Brier score values indicate better performance, with optimal performance achieved with a Brier score of 0.

The class weights have been selected to place more emphasis on the less frequent activities, so that the prediction of infrequent activities is rewarded more than the prediction of common activities. The values of the class weights are given in the section titled "Class Weights" of the [benchmark blog post](http://blog.drivendata.org/2016/06/06/sphere-benchmark/) (Page no longer available)

## Challenge hosted by drivendata.org

We are delighted to announce that the SPHERE Challenge, which takes place in conjunction with ECML-PKDD 2016, is now hosted at [DrivenData](https://www.drivendata.org/competitions/sphere) (Page no longer available). All challenge features (including the leaderboard, forum, and user/team registration) are now managed at the drivendata website. 


## Using this Data

The paper below provides a full description of the data and the data formats, and and any use of the data must cite this:

## Reference:

Niall Twomey, Tom Diethe, Meelis Kull, Hao Song, Massimo Camplani, Sion Hannuna, Xenofon Fafoutis, Ni Zhu, Pete Woznowski, Peter Flach, and Ian Craddock.The SPHERE Challenge: Activity Recognition with Multimodal Sensor Data. 2016.

BibTeX: 

```@article{twomey2016sphere, title={The {SPHERE} Challenge: Activity Recognition with Multimodal Sensor Data},author={Twomey, Niall and Diethe, Tom and Kull, Meelis and Song, Hao and Camplani, Massimo and Hannuna, Sion and Fafoutis, Xenofon and Zhu, Ni and Woznowski, Pete and Flach, Peter and others}, journal={arXiv preprint arXiv:1603.00797}, year={2016}}```
