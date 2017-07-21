/*
* 1st RRF - Framework - Player Initalization - init_player.sqf
* Player Initalization
* Version 1.0
*/

[] execVM "framework\doc.sqf";

[] spawn {
	waitUntil {!isNull player};
};


// For Training Map all ranges must be initalized here
laneRifleScore1 = 0;
laneRifleScore2 = 0;
laneRifleScore3 = 0;
laneRifleScore4 = 0;