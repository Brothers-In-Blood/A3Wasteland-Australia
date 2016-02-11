// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2015 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: atmPositions.sqf
//	@file Author: AgentRev

// ATM positions for Australia map
[

// Standalone ATMs and most telephone boxes
[26167,11140.3,1.25025],	
[25362,12685.9,1.37555],
[31150.7,11250.8,2.40211],
[31527.5,11268,1.25025],
[20758,12819.4,1.25025],
[27599.5,17005.8,2.49664],
[33568.7,13078.2,1.25025],
[31491,16900,1.26463],	
[22332.7,19213.2,1.25025],
[35387,8543.3,1.2507],
[33138.9,3895.53,1.25023],
[31140.6,19886.6,1.25027],	
[36440.4,13133.4,1.25024],
[33702.8,3521.75,2.5006],
[37911.5,19794.7,2.30581],
[22109.5,25569.9,1.25024],
[38328,20097.8,1.25025],
[34979.1,26198.6,1.25025],
[32023.6,29843.2,1.25025],
[5729.14,18634.1,1.25025],
[4609.5,16995.9,1.25025],
[28464.3,35142.1,1.25023],
[16273.4,33500.9,1.25025],
[22333.2,19214.4,0.516791],
[22089.9,25836.5,0.51679],
[25084.6,12759.6,0.516791],
[24831.7,12451.4,0.516791],
[26168.3,11139.3,0.516791],
[31489.1,16901.4,0.531174],	
[16117.7,33452,0.51679],	
[31190.6,10217.6,0.516791],
[31205.9,9554.09,0.516791],
[35096.4,26071.4,0.571481],
[36990.9,12292,0.516791],	
[33144.9,3895.27,0.516788]
]

// Modified script to find position and direction
/*
_atms = [];
{
	if ((str _x) find ": city2_pillard_f.p3d" != -1) then
	{
		_pos = _x modelToWorld [0,0,0];
		_dir = getDir _x;
		if (surfaceIsWater _pos) then
		{
			_pos = _pos vectorAdd ((getPosASL _x) vectorDiff (getPosASLW _x));
		};
		_atms pushBack _pos;
		_atms pushBack _dir;
	};
} forEach nearestObjects [player, [], 999999];

copyToClipboard str _atms;
*/
