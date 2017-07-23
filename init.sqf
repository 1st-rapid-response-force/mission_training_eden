/*
* 1st RRF - Framework - Master Initalization File - init.sqf
* Used to call all Initalization files
* Version 1.0
*/

enableSaving [false, false];

//Perms
debugEnabled = "debugEnabled" call BIS_fnc_getParamValue;

nopop = true;

// Call Init Files for both Server and Player 1st RRF Framework
call compile preprocessFile "framework\fnc\compile.sqf";

if (isServer) then {
	call compile preprocessFile "framework\init_server.sqf";
	["ETR"] call RR_fnc_initRifleRange;
};

call compile preprocessFile "framework\init_common.sqf";

if (!isDedicated) then {
	call compile preprocessFile "framework\init_player.sqf";
};

