/*Class based ammo box by B. The class based ammobox is created on client side. 
It replenishes every 30 minutes.

Usage: 
1. Must have a marker names ammobox on the map in the editor.
2. Each soldier should have correct class.
*/

_box = "I_supplyCrate_F" createVehicleLocal getMarkerPos "ammobox"; //Place this vehicle(box) on the marker called "ammobox".
_box setDir 30; // Sets the direction of the box

_weapons    = []; // array of weapons' classnames
_magazines  = ["CUP_30Rnd_556x45_Stanag","CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M","SmokeShell"]; // array of magazines' classnames
_items      = ["rhs_Booniehat_m81","ACE_personalAidKit","ACE_quikclot","ACE_EarPlugs","ACE_tourniquet","ACE_fieldDressing","ACE_morphine","ACE_morphine","ACE_elasticBandage","ACE_packingBandage","ACE_packingBandage"]; // array of items' classnames

_type = typeOf player;
switch (_type) do
{   /* Platoon Leader */ 
    case "AO_USMC_D_HQ_PL": {
        hint "PL";
        _weapons   = _weapons   + [];
        _magazines = _magazines + [];
        _items     = _items     + [];
    };
	/* Medic */
    case "AO_USMC_D_HQ_HM": {
        hint "CM";
        _weapons   = _weapons   + [];
        _magazines = _magazines + [];
        _items     = _items     + ["ACE_salineIV_500","ACE_personalAidKit","ACE_personalAidKit","ACE_quikclot","ACE_CableTie","ACE_CableTie","ACE_EarPlugs","ACE_tourniquet","ACE_fieldDressing","ACE_morphine","ACE_morphine","ACE_elasticBandage","ACE_packingBandage","ACE_packingBandage","ACE_surgicalKit","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing"];
    };
    default {false};
};

player reveal _box;

//refill the box every 30 minutes
while {alive _box} do 
{
    clearMagazineCargo _box;
    clearWeaponCargo   _box;
    clearItemCargo     _box;
    
    _timer = 180; //times 10 will be how long it will take
    
    {_box addWeaponCargo   [_x, 1];} foreach _weapons;
    {_box addMagazineCargo [_x, 5];} foreach _magazines;
    {_box addItemCargo     [_x, 1];} foreach _items;
    
	while {_timer > 0 } do { sleep 10; _timer = _timer - 1; };
};