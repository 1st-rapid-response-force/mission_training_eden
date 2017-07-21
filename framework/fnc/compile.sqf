/*
* 1st RRF - Framework - Function Compile File - compile.sqf
* Used to compile functions for use in the game.
* Version 1.0
*/

/////////////////////SERVER\\\\\\\\\\\\\\\\\\\\\
if (isServer) then {
    // No Functions
};

/////////////////////CLIENT AND SERVER\\\\\\\\\\\\\\\\\\\\\

// Debug

// Training Scripts
rrf_fnc_training_rifleRange =  compile preprocessfilelinenumbers 'framework\fnc\training\rifleRangeScript.sqf';
rrf_fnc_training_marksmanRange =  compile preprocessfilelinenumbers 'framework\fnc\training\marksmanRangeScript.sqf';
rrf_fnc_training_pistolRange =  compile preprocessfilelinenumbers 'framework\fnc\training\pistolRangeScript.sqf';
rrf_fnc_training_longRange =  compile preprocessfilelinenumbers 'framework\fnc\training\longRangeScript.sqf';
rrf_fnc_training_grenadeRange =  compile preprocessfilelinenumbers 'framework\fnc\training\grenadeRangeScript.sqf';
rrf_fnc_training_reportScore =  compile preprocessfilelinenumbers 'framework\fnc\training\centralizedScoring.sqf';
rrf_fnc_training_longRangeReset =  compile preprocessfilelinenumbers 'framework\fnc\training\resetLongRange.sqf';

/////////////////////CLIENT\\\\\\\\\\\\\\\\\\\\\
if (!isDedicated) then {
    // No Functions
};

if (debugEnabled == 1) then {
    hint "Compiled Functions";
};
