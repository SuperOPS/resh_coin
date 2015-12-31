/* ArmaOPS Mission Framework*/

/*Init.sqf*/

enableSaving [false, false];

enableSentences false;

// =======================================/Scripts/========================================= //
zphyr_fnc_loadFunction = compile preprocessFileLineNumbers "scripts/zeph_loadouts/loadoutInitiate.sqf"; //Define Loadout Function
call zphyr_fnc_loadFunction; //Call Loadout Function

this = [] execVM "scripts/briefing.sqf";

this = [] execVM "scripts/ops_ammo/ammo_core.sqf";


// =======================================/EOF/============================================= //
