const MESSAGE_TYPE = {
  CONNECT_TO_HOST: 0,
  OTHER_CONNECTED_TO_HOST: 1,
  LATENCY: 2,
  DISCONNECT_FROM_HOST: 3,
  OTHER_DISCONNECT_FROM_HOST: 4,

  DATA_PLAYER_POSITION: 5,
  DATA_PLAYER_VELOCITY: 6,
  DATA_PLAYER_MOVEMENT_INPUT: 7,
  DATA_PLAYER_WEAPON_FUNCTION: 8,
  DATA_PLAYER_WEAPON_EQUIP: 9,

  CONTAINER_REQUEST_CONTENT: 10,
  CONTAINER_ADD_ITEM: 11,
  CONTAINER_IDENTIFY_ITEM: 12,
  CONTAINER_MOVE_AND_ROTATE_ITEM: 13,
  CONTAINER_DELETE_ITEM: 14,
};

module.exports = MESSAGE_TYPE;
