// define
#define                 MAX_PLAYERS         (1000)
#define                 MAX_ACTORS          (1000)
#define                 MAX_MENUS           (Menu:128)
#define                 MAX_GANG_ZONES      (1024)
#define                 MAX_OBJECTS         (2000)
#define      		        MAX_PLAYER_NAME      (24)
#define   		          MAX_VEHICLES        (2000)

/*

- includes

*/
#include <a_samp>

//#include   "namefoldermodules/constant-all.pwn"

main()
{
    print("(server.pwn) --> started.");
	printf(">>> MAX_PLAYERS: %i", MAX_PLAYERS);
	printf(">>> MAX_ACTORS: %i", MAX_ACTORS);
}

public OnGameModeInit()
{
    SetGameModeText("My first SA-MP gamemode!");
    AddPlayerClass(0, CLASS_POS_X, CLASS_POS_Y, CLASS_POS_Z, CLASS_ANGLE, CLASS_WEAPON_1, AMMO_1, CLASS_WEAPON_2, AMMO_2, CLASS_WEAPON_3, AMMO_3);
    AddStaticVehicleEx(VEHICLE_MODEL, VEHICLE_POS_X, VEHICLE_POS_Y, VEHICLE_POS_Z, VEHICLE_ANGLE, VEHICLE_COLOR_1, VEHICLE_COLOR_2, VEHICLE_RESPAWN_TIME, VEHICLE_ADD_SIREN);
    return 1;
}

public OnGameModeExit()
{
	print("gamemode closes!");
	return 1;
}

public OnPlayerConnect(playerid)
{
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
    return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
    SetPlayerPos(playerid, PLAYER_POS_X, PLAYER_POS_Y, PLAYER_POS_Z);
    SetPlayerFacingAngle(playerid, PLAYER_ANGLE);
    SetPlayerInterior(playerid, PLAYER_INTERIOR);
    SetPlayerCameraPos(playerid, PLAYER_POS_X - 2.6329, PLAYER_POS_Y - 1.0681, PLAYER_POS_Z + 1.1422);
    SetPlayerCameraLookAt(playerid, PLAYER_POS_X, PLAYER_POS_Y, PLAYER_POS_Z);
    return 1;
}

public OnPlayerSpawn(playerid)
{
	SetPlayerInterior(playerid, 0);
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
	return 1;
}

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	return 1;
}

public OnPlayerExitVehicle(playerid, vehicleid)
{
	return 1;
}

public OnVehicleSpawn(vehicleid)
{
	return 1;
}

public OnVehicleDeath(vehicleid, killerid)
{
	return 1;
}

public OnPlayerRequestSpawn(playerid)
{
	return 1;
}

public OnPlayerText(playerid, text[])
{
    new PlayerTextChat[128];
    format(PlayerTextChat, sizeof(PlayerTextChat), "(%d) %s", playerid, text);
    SendPlayerMessageToAll(playerid, PlayerTextChat);
    return 1;
}

public OnPlayerUpdate(playerid)
{
	return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    return 1;
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{
    return 1;
}

public OnPlayerEnterCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveCheckpoint(playerid)
{
	return 1;
}

public OnPlayerEnterRaceCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveRaceCheckpoint(playerid)
{
	return 1;
}

public OnPlayerGiveDamageActor(playerid, damaged_actorid, Float:amount, weaponid, bodypart)
{
	return 1;
}

public OnActorStreamIn(actorid, forplayerid)
{
	return 1;
}

public OnActorStreamOut(actorid, forplayerid)
{
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	return 1;
}

public OnPlayerSelectedMenuRow(playerid, row)
{
	return 1;
}

public OnPlayerExitedMenu(playerid)
{
	/*
	- you have this here if you need it
	TogglePlayerControllable(playerid, 1); // unfreezes the player when exiting a menu
	*/
    return 1;
}

public OnClientCheckResponse(playerid, actionid, memaddr, retndata)
{
	return 1;
}

public OnRconLoginAttempt(ip[], password[], success)
{
	return 1;
}

public OnPlayerFinishedDownloading(playerid, virtualworld)
{
	return 1;
}

public OnPlayerRequestDownload(playerid, type, crc)
{
    return 1;
}

public OnRconCommand(cmd[])
{
    return 1;
}

public OnPlayerSelectObject(playerid, type, objectid, modelid, Float:fX, Float:fY, Float:fZ)
{
    return 1;
}

public OnPlayerEditObject(playerid, playerobject, objectid, response, Float:fX, Float:fY, Float:fZ, Float:fRotX, Float:fRotY, Float:fRotZ)
{
    return 1;
}

public OnPlayerEditAttachedObject(playerid, response, index, modelid, boneid, Float:fOffsetX, Float:fOffsetY, Float:fOffsetZ, Float:fRotX, Float:fRotY, Float:fRotZ, Float:fScaleX, Float:fScaleY, Float:fScaleZ)
{
    return 1;
}

public OnObjectMoved(objectid)
{
	return 1;
}

public OnPlayerObjectMoved(playerid, objectid)
{
	return 1;
}

public OnPlayerPickUpPickup(playerid, pickupid)
{
	return 1;
}

public OnPlayerStreamIn(playerid, forplayerid)
{
	return 1;
}

public OnPlayerStreamOut(playerid, forplayerid)
{
	return 1;
}

public OnPlayerTakeDamage(playerid, issuerid, Float:amount, weaponid, bodypart)
{
    return 1;
}

public OnPlayerGiveDamage(playerid, damagedid, Float:amount, weaponid, bodypart)
{
	return 1;
}

public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
    return 1;
}

public OnPlayerWeaponShot(playerid, weaponid, hittype, hitid, Float:fX, Float:fY, Float:fZ)
{
    return 1;
}

public OnPlayerClickMap(playerid, Float:fX, Float:fY, Float:fZ)
{
    SetPlayerPosFindZ(playerid, fX, fY, fZ);
    return 1;
}

public OnIncomingConnection(playerid, ip_address[], port)
{
	return 1;
}

public OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid)
{
	return 1;
}

public OnPlayerClickTextDraw(playerid, Text:clickedid)
{
	return 1;
}

public OnPlayerClickPlayerTextDraw(playerid, PlayerText:playertextid)
{
	return 1;
}

public OnTrailerUpdate(playerid, vehicleid)
{
	return 1;
}

public OnVehicleSirenStateChange(playerid, vehicleid, newstate)
{
	return 1;
}

public OnVehicleStreamIn(vehicleid, forplayerid)
{
	return 1;
}

public OnVehicleStreamOut(vehicleid, forplayerid)
{
	return 1;
}

public OnVehicleMod(playerid, vehicleid, componentid)
{
    return 1;
}

public OnEnterExitModShop(playerid, enterexit, interiorid)
{
	return 1;
}

public OnVehiclePaintjob(playerid, vehicleid, paintjobid)
{
    return 1;
}

public OnVehicleRespray(playerid, vehicleid, color1, color2)
{
    return 1;
}

public OnVehicleDamageStatusUpdate(vehicleid, playerid)
{
	return 1;
}

public OnUnoccupiedVehicleUpdate(vehicleid, playerid, passenger_seat, Float:new_x, Float:new_y, Float:new_z, Float:vel_x, Float:vel_y, Float:vel_z)
{
    return 1;
}
