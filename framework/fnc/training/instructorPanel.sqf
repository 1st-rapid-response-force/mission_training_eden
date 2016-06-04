_player = _this select 0;
myaction = ['instructorPanel','Instructor Panel','',{hint ""},{true}] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions"], myaction] call ace_interact_menu_fnc_addActionToObject;

myaction = ['instructorPanelTimeDay','Skip 6 Hours','',{6 remoteExecCall ["skipTime",2];
},{true}] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions", "instructorPanel"], myaction] call ace_interact_menu_fnc_addActionToObject;

myaction = ['instructorPanelWeather','Clear Weather','',{[] remoteExecCall ["rrf_fnc_training_clearWeather",2];
},{true}] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions", "instructorPanel"], myaction] call ace_interact_menu_fnc_addActionToObject;
