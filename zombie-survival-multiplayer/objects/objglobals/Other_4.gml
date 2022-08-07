// Fetch global controllers
if (instance_exists(objCamera)) global.ObjCamera = instance_find(objCamera, 0);
if (instance_exists(objDisplay)) global.ObjGUI = instance_find(objDisplay, 0);

if (instance_exists(objDatabase))
{
	global.ItemData = instance_find(objDatabase, 0).itemData;
	global.BulletData = instance_find(objDatabase, 0).bulletData;
}

if (instance_exists(objInventory)) global.PlayerBackpack = instance_find(objInventory, 0).inventory;
if (instance_exists(objLootContainer)) global.ObjLootContainer = instance_find(objLootContainer, 0);

if (instance_exists(objSpawner)) global.ObjSpawner = instance_find(objSpawner, 0);

if (instance_exists(objMessageLog)) global.MessageLog = instance_find(objMessageLog, 0).messages;

// Fetch view variables
global.ViewW = view_wport[0];
global.ViewH = view_hport[0];

global.GUIW = display_get_gui_width();
global.GUIH = display_get_gui_height();