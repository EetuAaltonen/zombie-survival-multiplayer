enum MESSAGE_TYPE {
	CONNECT_TO_HOST,
	OTHER_CONNECTED_TO_HOST,
	LATENCY,
	DISCONNECT_FROM_HOST,
	OTHER_DISCONNECT_FROM_HOST,
	
	DATA_PLAYER_SYNC,
	DATA_PLAYER_POSITION,
	DATA_PLAYER_VELOCITY,
	DATA_PLAYER_MOVEMENT_INPUT,
	DATA_PLAYER_WEAPON_FUNCTION,
	DATA_PLAYER_WEAPON_EQUIP,
	
	CONTAINER_REQUEST_CONTENT,
	CONTAINER_ADD_ITEM,
	CONTAINER_IDENTIFY_ITEM,
	CONTAINER_MOVE_AND_ROTATE_ITEM,
	CONTAINER_DELETE_ITEM
}