-- ------
# Database: Industry - Health & Business Area - Logistics
# Authors: Aaron Flynn - x19404024 & Alexis Pechon - x19358953
# Date:  06/04/2021
# DML Script


USE logistics;

INSERT INTO `products` VALUES (200382, "Ibuprofen", "Pain Relief", 217291, 63213),
	(400212, "Codeine", "Opiates", 217322, 72162),
    (489321, "Cold Sore Cream", "Skin Treatment", 328353, 64235),
    (437124, "Freeze Cold Gel", "Skin Treatment", 331247, 63124),
    (452124, "Deep Heat Cream", "Skin Treatment", 354345, 62153);
    
INSERT INTO `ref_calender` VALUES (182029, "2020-09-12", "2020-09-12", "2020-09-20", "2020-09-19"),
	(182487, "2021-01-02", "2021-01-03", "2021-01-07", "2021-01-07"),
	(146234, "2021-02-15", "2021-02-15", "2021-02-22", "2021-01-24"),
    (154323, "2021-02-17", "2021-02-18", "2021-02-25", "2021-02-25"),
    (174235, "2021-02-20", "2021-02-23", "2021-03-01", "2021-03-01");
    
INSERT INTO `shipment_legs` VALUES (000256, "Ireland", "Church st Cootehill, Cootehill, County Cavan", "Germany", "Messedamm 5, Dresden, Freistaat Sachsen"),
	(000352, "Ireland", "Church st Cootehill, Cootehill, County Cavan", "Germany", "Albrechtstrasse 60, Passau, Freistaat Bayern"),
    (000532, "Ireland", "98 House Main st Kingscourt, Kingscourt, County Cavan", "Germany", "Ziegelstr. 51, Bad Birnbach, Freistaat Bayern"),
    (000124, "Ireland", "98 House Main st Kingscourt, Kingscourt, County Cavan", "Germany", "Albrechtstrasse 60, Passau, Freistaat Bayern"),
    (000151, "Ireland", "98 House Main st Kingscourt, Kingscourt, County Cavan", "Germany", "Albrechtstrasse 30, Neusäß, Freistaat Bayern");
    
INSERT INTO `shipper` VALUES (021242, "Katy White", 0832182426, "White982@gmail.com"),
	(042123, "John Doe", 0872124431, "JD2912@gmail.com"),
 	(042536, "Shawn Riley", 0873235323, "Shawn21@gmail.com"),
	(012532, "Josh Scott", 0835326432, "JoshS@gmail.com"),
	(045323, "Ridly O' Connol", 0876324642, "Ridly25@gmail.com");
    
INSERT INTO `trader` VALUES (021482, "Holly Lynn", 0878390236, "HollyLynn@hotmail.com"),
	(0281624, "Chris Watts", 0872115375, "CWatts@gmail.com"),
    (0263121, "Josh Crowley", 0831243262, "JoshCrowley21@gmail.com"),
    (0265323, "Lawrence Crown", 0871543233, "LawrenceC26@gmail.com"),
    (0288496, "Stacey Farrel", 0833846284, "SFarrel@gmail.com");
    
INSERT INTO `warehouse` VALUES (921729, "Ireland", "Church st Cootehill, Cootehill, County Cavan", "Barry Miles", 0837226493, "BM3718@gmail.com"),
	(921827, "Ireland", "The Square Newcastlewest, Newcastle west, County Limerick", "Jack Wiles", 0832774693, "JackW@gmail.com"),
    (927542, "Ireland", "98 House Main st Kingscourt, Kingscourt, County Cavan", "Ronald Crosh", 0872193841, "RCrosh827@gmail.com");
    
INSERT INTO `weight_level` VALUES (038219, "Heavy", 25),
	(038242, "Light", 6),
    (036812, "Medium", 15),
    (038217, "Light", 2),
    (038259, "Medium", 18);
    
INSERT INTO `shipment_facts`
 VALUES (000256, 021242, 200382, 921729, 021482, 182029, 038219, NULL),
    (00352, 042123, 400212, 921729, 0281624, 182487, 038242, NULL),
    (00532, 042536, 489321, 921827, 0263121, 146234, 036812, NULL),
    (00124, 012532, 437124, 921827, 0265323, 154323, 038217, NULL),
    (00151, 045323, 452124, 921827, 0288496, 174235, 038259, NULL);
