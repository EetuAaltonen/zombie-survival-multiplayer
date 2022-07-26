// CHECK GUI STATE
if (!IsGUIStateClosed()) return;

if (global.ObjPlayer != noone)
{
	if (!requestContent)
	{
		insideInteractionRange = (point_distance(x, y, global.ObjPlayer.x, global.ObjPlayer.y) < interactionRange);
	
		if (insideInteractionRange && keyboard_check_released(ord("F")))
		{
			// NETWORKING CONTAINER REQUEST CONTENT
			var networkBuffer = global.ObjNetwork.client.CreateBuffer(MESSAGE_TYPE.CONTAINER_REQUEST_CONTENT);
			
			buffer_write(networkBuffer, buffer_text , containerId);
			global.ObjNetwork.client.SendPacketOverUDP(networkBuffer);
			
			requestContent = true;
		}
	}
}
