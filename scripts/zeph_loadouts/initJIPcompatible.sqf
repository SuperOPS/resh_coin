//Ensure JIP run Loadout Init
if (!isServer) then
{
	loadFunction = compile preprocessFileLineNumbers "scripts/zeph_loadouts/loadoutInitiate.sqf";
	call loadFunction;
};
