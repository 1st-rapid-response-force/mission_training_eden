/*
	File: GrenadeRangeScript.sqf

	Description:
	Initializes the range script for any calling range

	Parameter(s):
  	_this:	0 - array - Targets in an Array

	Returns:
	Nothing
*/

//Variable Setup
_rangeArray = _this select 0;

{
	{_x animate ["terc", 0];} forEach _x;
} forEach _rangeArray;
