// INHERITED EVENT
event_inherited();

if (global.ObjPlayer != noone)
{
	if (!is_undefined(global.RoomGrid))
	{
		var distanceToPlayer = point_distance(x, y, global.ObjPlayer.x, global.ObjPlayer.y);
		var distanceToTarget = point_distance(x, y, lastKnownTargetPos.X, lastKnownTargetPos.Y);
		
		if (updatePath)
		{
			updatePath = false;
			pathUpdateTimer = pathUpdateDelay;
			
			// CALCULATE NEW TARGET POS
			if (distanceToPlayer <= aggroRadius)
			{
				if (!collision_line(x, y, global.ObjPlayer.x, global.ObjPlayer.y, objBlockParent, true, true))
				{
					lastKnownTargetPos = new Vector2(global.ObjPlayer.x, global.ObjPlayer.y);
					distanceToTarget = point_distance(x, y, lastKnownTargetPos.X, lastKnownTargetPos.Y);
				}
			}
			
			if (distanceToTarget > stopRadius)
			{
				if (mp_grid_path(global.RoomGrid, path, x, y, lastKnownTargetPos.X, lastKnownTargetPos.Y, true))
				{
					path_start(path, maxSpeed, path_action_stop, false);
					pathUpdateTimer = pathUpdateDelay;
				}
			}
		}
		
		if (distanceToTarget <= stopRadius)
		{
			path_end();
		}
		
		if (distanceToPlayer < aggroRadius)
		{
			pathUpdateTimer = min(pathUpdateTimer, floor((pathUpdateDelay * 0.5) * (distanceToPlayer / aggroRadius)));
		}
		
		if (pathUpdateTimer-- <= 0)
		{
			updatePath = true;
			pathUpdateTimer = pathUpdateDelay;
		}
	}
}