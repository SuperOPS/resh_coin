/*
	Replace the Loadout classes listed in the Cases below with the variables you defined in the loadoutInitiate script.
	i.e. "SL", "RIF", "MED", etc.

	It is suggested you use the arsenal in-game to develop your loadouts. Using the export function and copy/pasting to a blank text file you can place the appropriate blocks into the appropriate sections of each loadouts.
*/

_var = _this getVariable "z_class";
_unit = _this;
switch _var do
{
	case /*LoadoutClass_1*/:
	{
		//Removal of Existing Gear
		removeAllWeapons _unit;
		removeAllItems _unit;
		removeAllAssignedItems _unit;
		removeUniform _unit;
		removeVest _unit;
		removeBackpack _unit;
		removeHeadgear _unit;
		removeGoggles _unit;
		//Add Weapons (Arsenal will put this at the bottem, placing it at the top will allow you to have the weapon loaded properly when loading in, without missing mags/equipment due to running out of space in containers/vests)


		//Add Gear (Uniform, Vest, Etc.)


		//Add Items


	};
	case /*LoadoutClass_2*/:
	{
		//Remove Existing Gear
		removeAllWeapons _unit;
		removeAllItems _unit;
		removeAllAssignedItems _unit;
		removeUniform _unit;
		removeVest _unit;
		removeBackpack _unit;
		removeHeadgear _unit;
		removeGoggles _unit;
		//Add Weapons (Arsenal will put this at the bottem, placing it at the top will allow you to have the weapon loaded properly when loading in, without missing mags/equipment due to running out of space in containers/vests)

		//Add Gear (Uniform, Vest, Etc.)


		//Add Items

	};
};