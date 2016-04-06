/*
	File: training_serverRangeReport.sqf

	Description:
	Gets the range score report from Fusion

	Parameter(s):
  	_this:	integer	- uniqueId for range
	Returns:
	_response = integer of range
*/

_server_id = server_id;
_rangeId = _this select 0;

[_rangeId] spawn {
        _rangeId = _this select 0;
        _method = "report_score";
        _params = [[server_id,_rangeId]];
        _response = [_method, _params] call sock_rpc;


};
