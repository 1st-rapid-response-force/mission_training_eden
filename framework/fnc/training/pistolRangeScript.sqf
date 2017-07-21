/*
	File: pistolRangeScript.sqf

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
_ownerID = owner player;
_uuid = getPlayerUID _player;
_name = name player;
_weapon = currentWeapon _player;

_rangeType = "Pistol Range";
_rangeArray = _this select 1;

// Call Function on Server by sending it the neccessary information

fnc_countDown10 = {
	for "_i" from 5 to 0 step -1 do {
		hint format ["Range Hot in: %1",_i];
		sleep 1;
	};
	playSound "Alarm";
	hint "Range is HOT!";
};




//Comsmetics

titleText ["Pistol Range Qualification Course","PLAIN",1];
hint "Welcome to Pistol Range";
//Drop Targets
{_x animate ["terc", 1];} forEach _rangeArray;

{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
{_x animate ["terc", 0];} forEach _rangeArray;
sleep 1;
hint "CEASE FIRE - RANGE IS CLEAR. Return to your instructor for further details.";


