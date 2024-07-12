params ["_position", "_size"];

if (!isServer) exitWith {};
// if (missionNameSpace getVariable ["grad_ammodump_exploded", false]) exitWith {};

// missionNamespace setVariable ["grad_ammodump_exploded", true, true];

[[_position, _size], "user\scripts\luna.sqf"] remoteExec ["BIS_fnc_execVM"];


[_position] spawn {
	params ["_ammoPos"];

	for "_i" from 0 to 5 do {
		private _ammo = "gm_rocket_luna_he_3r9" createVehicle _ammoPos;
		_ammo setVelocity [0, 0, -200];
		sleep (random 1 max 0.25);
	};
};

