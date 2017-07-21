/*
	File: rifleRangeScript.sqf

	Description:
	Initializes the range script for any calling range

	Parameter(s):
  	_this:	0 - int - Lane Number
  			1 - array - Targets in an Array
  			2 - int - Time between targets
  			3 - obj - RangerMaster

	Returns:
	Nothing
*/

//Variable Setup
_player = player;
_ownerID = owner player;
_uuid = getPlayerUID _player;
_name = name player;
_weapon = currentWeapon _player;

_rangeType = "Rifle Range";
_laneScore = 0;
_stageMaxScore = 0;
_laneNum = _this select 0;
_rangeArray = _this select 1;
_timeBetweenTargets = _this select 2;
_rangeMaster = _this select 3;

// Call Function on Server by sending it the neccessary information

fnc_target ={
	_object = _this select 0;
	_laneNum1 = _this select 1;
	_laneScore1 = _this select 2;
	_object removeAllEventHandlers "HitPart";
	_laneScore1 = 1+_laneScore1;
	hint format["RIFLE LANE %1 - Hit",_laneNum1,_laneScore1];
};

fnc_countDown10 = {
	for "_i" from 5 to 0 step -1 do {
		hint format ["Range Hot in: %1",_i];
		sleep 1;
	};
	playSound "Alarm";
	hint "Range is HOT!";
};


///////////////////////////////////////////////////////
//////////////////// Introduction
///////////////////////////////////////////////////////

if (debugEnabled == 0) then {
	titleText ["Rifle Range Qualification Course","PLAIN",1];
    hint "Welcome to Rifle Range Qualification Course";
	sleep 5;
	hint "You will be given 10 Targets in the Standing Position, 10 Targets in the Crouch Position, and 20 targets in the Prone Position";
	sleep 5;
	hint "LOAD YOUR RIFLE";
	sleep 5;
	hint "USE 1 ROUND PER TARGET ONLY!";
	sleep 5;
	hint "STANDING POSITION";



//Begin Alarm
_null = call fnc_countDown10;


};
//Drop Targets
{_x animate ["terc", 1];} forEach _rangeArray;

///////////////////////////////////////////////////////
//////////////////// PHASE 1 - STANDING
///////////////////////////////////////////////////////
//Standing
_stageMaxScore = 10;
if (debugEnabled == 1) then {
    _stageMaxScore = 2;
};
sleep _timeBetweenTargets;
hint "Range is HOT!";
_previousTarget = _rangeArray select 0;

for "_i" from 1 to _stageMaxScore do {
	_target = _rangeArray call BIS_fnc_selectRandom;
	if (_previousTarget == _target) then {
	  _target = _rangeArray call BIS_fnc_selectRandom;
	  if (_previousTarget == _target) then {
	    _target = _rangeArray call BIS_fnc_selectRandom;
	  };
	};
	_target addEventHandler ["HitPart", format ["_null = [%1,%2,%3] call fnc_target", _target, _laneNum,_laneScore]];
	_target animate ["terc", 0];
	sleep _timeBetweenTargets;
	_target animate ["terc", 1];
	_previousTarget = _target;
	sleep _timeBetweenTargets;
	_target removeAllEventHandlers "HitPart";
};

///////////////////////////////////////////////////////
//////////////////// PHASE 2 - CROUCH
///////////////////////////////////////////////////////
sleep 5;
hint "PHASE 2 - CROUCH POSITION";
sleep 5;
_stageMaxScore = 10;
if (debugEnabled == 1) then {
    _stageMaxScore = 2;
};
sleep _timeBetweenTargets;

hint "Range is HOT!";
_previousTarget = _rangeArray select 0;

for "_i" from 1 to _stageMaxScore do {
	_target = _rangeArray call BIS_fnc_selectRandom;
	if (_previousTarget == _target) then {
	  _target = _rangeArray call BIS_fnc_selectRandom;
	  if (_previousTarget == _target) then {
	    _target = _rangeArray call BIS_fnc_selectRandom;
	  };
	};
	_target addEventHandler ["HitPart", format ["_null = [%1,%2,%3] call fnc_target", _target, _laneNum,_laneScore]];
	_target animate ["terc", 0];
	sleep _timeBetweenTargets;
	_target animate ["terc", 1];
	_previousTarget = _target;
	sleep _timeBetweenTargets;
	_target removeAllEventHandlers "HitPart";
};

///////////////////////////////////////////////////////
//////////////////// PHASE 2 - PRONE
///////////////////////////////////////////////////////
sleep 5;
hint "PHASE 2 - PRONE POSITION";
sleep 5;
_stageMaxScore = 20;
if (debugEnabled == 1) then {
    _stageMaxScore = 2;
};
sleep _timeBetweenTargets;

hint "Range is HOT!";
_previousTarget = _rangeArray select 0;

for "_i" from 1 to _stageMaxScore do {
	_target = _rangeArray call BIS_fnc_selectRandom;
	if (_previousTarget == _target) then {
	  _target = _rangeArray call BIS_fnc_selectRandom;
	  if (_previousTarget == _target) then {
	    _target = _rangeArray call BIS_fnc_selectRandom;
	  };
	};
	_target addEventHandler ["HitPart", format ["_null = [%1,%2,%3] call fnc_target", _target, _laneNum,_laneScore]];
	_target animate ["terc", 0];
	sleep _timeBetweenTargets;
	_target animate ["terc", 1];
	_previousTarget = _target;
	sleep _timeBetweenTargets;
	_target removeAllEventHandlers "HitPart";
};

///////////////////////////////////////////////////////
//////////////////// REPORT OUT
///////////////////////////////////////////////////////
sleep 5;
{_x animate ["terc", 0];} forEach _rangeArray;
hint "CEASE FIRE - RANGE IS CLEAR.";
