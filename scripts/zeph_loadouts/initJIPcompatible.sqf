//Ensure JIP run Loadout Init
if (!isServer) then
{
	loadFunction = compile preprocessFileLineNumbers "loadoutInitiate.sqf";
	call loadFunction;
};