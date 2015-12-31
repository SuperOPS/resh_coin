//JIP Check
if (didJIP) then
{
	if (player != player) then
	{
		waitUntil {player == player};
	};
	waitUntil {local player};
/*
	Define Cases for the switch statement. You can use either singular variables for single units or arrays for multiple units recieving the same loadout. With the setVariable command, define a string that you can remember and describes the loadout. It will make it easier building the loadouts.sqf script.

	Example:
	case (player == SL): {player setVariable ["z_class", "SL"]};
	case (player in [r1,r2]): {player setVariable ["z_class", "RIF"]};
*/
	switch true do
	{
		//Put Switch Cases here
	};
	0 = player execVM "loadouts.sqf";
}
else
{

	{
		switch true do
		{
/*
	Define Cases for the switch statement. You can use either singular variables for single units or arrays for multiple units recieving the same loadout. These cases are being run on a forEach command, so the magic variable _x is to be used as the unit the scripts being run on. See examples below.

	Example:
	case (_x == SL): {_x setVariable ["z_class", "SL"]};
	case (_x in [r1,r2]): {_x setVariable ["z_class", "RIF"]};

	(Replace this Comment Block with Case Arguments)
*/
		};
		} forEach allUnits;

		//Calls loadouts on server
		if (isServer) then
		{
			{_load1 = _x execVM "loadouts.sqf"; waitUntil {scriptDone _load1};} forEach allUnits;
		};
		//Calls loadouts on players (non-dedi clients, aka not the server)
		if (!isDedicated) then
		{
			if (player != player) then
			{
				waitUntil {player == player};
			};
			waitUntil {local player};
			_load2 = player execVM "loadouts.sqf";
		};
	};
