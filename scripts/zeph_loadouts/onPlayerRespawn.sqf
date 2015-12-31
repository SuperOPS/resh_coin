//Note: This should look identical to the JIP portion of the loadoutInitiate.sqf script.
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
0 = player execVM "scripts/zeph_loadouts/loadouts.sqf";
