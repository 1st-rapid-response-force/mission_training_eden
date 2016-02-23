/*
	File: rifleRangeScript.sqf

	Description:
	Initializes the range script for any calling range

	Parameter(s):
  	_this:	0 - int - Lane Number
  			1 - array - Targets in an Array
  			2 - int - Time between targets
  			3 - bool - Determine if score should be sent to Catalyst

	Returns:
	Nothing
*/

//Variable Setup
_player = player;
_uuid = getPlayerUID _player;
_name = name player;
_weapon = primaryWeapon _player;

_rangeType = "Rifle Range";
_laneScore = 0;
_stageMaxScore = 0;
_qualification = "Unset";
_laneNum = _this select 0;
_rangeArray = _this select 1;
_timeBetweenTargets = _this select 2;
_storeResult = _this select 3;

fnc_target ={
	_laneNum = _this select 0;
	_rifleArray = RangerMaster getVariable "rifleScores";
	_laneScore = (_rifleArray select _laneNum)+1;
	_rifleArray set [_laneNum,_laneScore];
	RangerMaster setVariable ["rifleScores", _rifleArray];
	RangerMaster sideChat format["LANE - %1 - %2/60",_laneNum,_laneScore];
};

fnc_countDown10 = {
	for "_i" from 5 to 0 step -1 do {
		hint format ["Range Hot in: %1",_i];
		sleep 1;
	};
	playSound "Alarm";
	hint "Range is HOT!";
};



//Comsmetics


{_x animate ["terc", 1];} forEach _rangeArray;

//Standing
_stageMaxScore = 10;
titleText ["Standing - 10 Round","PLAIN",1];
sleep _timeBetweenTargets;
hint "Range is HOT!";
for "_i" from 1 to _stageMaxScore do {
	_target = _rangeArray call BIS_fnc_selectRandom;
	_target addMPEventHandler ["MPHit", format ["_null = [%1] call fnc_target", _laneNum]];
	_target animate ["terc", 0];
	sleep _timeBetweenTargets;
	_target animate ["terc", 1];
	_target removeMPEventHandler ["MPHit", 0];
};
_rifleArray = RangerMaster getVariable "rifleScores";
_laneScore = _rifleArray select _laneNum;
hint format ["Total Score: %1/60",_laneScore];

//Crouch
sleep 5;
hint "Prepare for Crouch Qualification";
hint "Go to the Crouch Position";
sleep 5;
titleText ["Crouch - 20 Round","PLAIN",1];
_stageMaxScore = 20;
sleep _timeBetweenTargets;

hint "Range is HOT!";
for "_i" from 1 to _stageMaxScore do {
	_target = _rangeArray call BIS_fnc_selectRandom;
	_target addMPEventHandler ["MPHit", format ["_null = [%1] call fnc_target", _laneNum]];
	_target animate ["terc", 0];
	sleep _timeBetweenTargets;
	_target animate ["terc", 1];
	_target removeMPEventHandler ["MPHit", 0];
};
_rifleArray = RangerMaster getVariable "rifleScores";
_laneScore = _rifleArray select _laneNum;
hint format ["Total Score: %1/60",_laneScore];

//Prone
sleep 5;
hint "Prepare for Prone Qualification";
hint "Go to the Prone Position";
sleep 5;
titleText ["Prone - 30 Round","PLAIN",1];
_stageMaxScore = 30;

sleep _timeBetweenTargets;

hint "Range is HOT!";
for "_i" from 1 to _stageMaxScore do {
	_target = _rangeArray call BIS_fnc_selectRandom;
	_target addMPEventHandler ["MPHit", format ["_null = [%1] call fnc_target", _laneNum]];
	_target animate ["terc", 0];
	sleep _timeBetweenTargets;
	_target animate ["terc", 1];
	_target removeMPEventHandler ["MPHit", 0];
};
_rifleArray = RangerMaster getVariable "rifleScores";
_laneScore = _rifleArray select _laneNum;
hint format ["Total Score: %1/60",_laneScore];

//Reset Range
sleep 5;
{_x animate ["terc", 0];} forEach _rangeArray;
hint "CEASE FIRE - RANGE IS CLEAR. Return to your instructor for further details.";

//Submit Score to all Clients
// We will need to create a method for storing this information
//[_uuid,_name] remoteExecCall ["rrf_fnc_training_serverStoreRange",2];

sleep 5;
//Determine Qualification
hint format ["Final Report: %1/60 \n \n Remove the Magazine from your weapon!",_laneScore];

