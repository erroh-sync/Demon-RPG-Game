// Movement //
if(__can_player_move()){
    if(stepdist == -1 && rotstep == -1)
    {
        // Lateral Movement
        if(global.input_shoulder != 0 || global.input_v != 0)
        {
            if(global.input_shoulder > 0)			movedir = dir.right;
            else if(global.input_shoulder < 0)		movedir = dir.left;
            if(global.input_v < 0)					movedir = dir.up;
            else if(global.input_v > 0)				movedir = dir.down;
            
            // Calculate the direction we will be moving in
            relmovedir = movedir;
            switch(facedir)
            {
                case dir.left:			relmovedir += 90;
                    break;
                case dir.right:			relmovedir -= 90;
                    break;
                case dir.down:			relmovedir += 180;
                    break;
            }
            
            // Make sure we don't end up outside of our main 4 directions
            if(relmovedir >= 360)		relmovedir -= 360;
			else if(relmovedir < 0)		relmovedir += 360;
            
            // Collision Detection
            var col = false;
			
            switch(relmovedir)
            {
                case dir.left:
                {
                    if (position_meeting(x - maxstepdist, y, o_Collider)) col = true;
                    break;
                }
                case dir.right:
                {
                    if (position_meeting(x + maxstepdist, y, o_Collider)) col = true;
                    break;
                }
                case dir.up:
                {
                    if (position_meeting(x, y - maxstepdist, o_Collider)) col = true;
                    break;
                }
                case dir.down:
                {
                    if (position_meeting(x, y + maxstepdist, o_Collider)) col = true;
                    break;
                }
            }
            
            // Movement Stuff
            if(!col)
                stepdist = 0;
        }else if(global.input_h != 0)
        {
            rotdir = global.input_h;
            rotstep = 0;
        }
    }else{    
        if(rotstep != -1){
            // Truncate our RotationSpeed to ensure we don't Overturn (Should never be needed but it's a good safety net)
            var t_rotspeed;
            t_rotspeed = rotspeed;
            if(rotstep + t_rotspeed > maxrotstep)
            {
                t_rotspeed = maxrotstep - rotstep;
            }
            
            // Update our rotation
            facedir += sign(rotdir) * t_rotspeed;
            rotstep += rotspeed;
			
			image_angle = facedir;
            
            // And perform ending checks
            if(rotstep >= maxrotstep)
            {
                rotstep = -1;
                if(facedir == dir.negleft)
                    facedir = dir.left;
                else if(facedir == dir.negdown)
                    facedir = dir.down;
            }
        }else if(stepdist != -1){
            // Truncate our MoveSpeed to ensure we don't overstep (Should never be needed but it's a good safety net)
            var t_stepspeed;
            t_stepspeed = stepspeed;
            if(stepdist + t_stepspeed > maxstepdist)
            {
                t_stepspeed = maxstepdist - stepdist;
            }
            
            // Do the actual movement
            switch(relmovedir)
            {
                case dir.left:
                {
                    x -= t_stepspeed;
                    break;
                }
                case dir.right:
                {
                    x += t_stepspeed;
                    break;
                }
                case dir.up:
                {
                    y -= t_stepspeed;
                    break;
                }
                case dir.down:
                {
                    y += t_stepspeed;
                    break;
                }
            }
            
            // Ending Checks
            stepdist += t_stepspeed;
            if(stepdist >= maxstepdist)
            {
                stepdist = -1;
                
                // Trigger Check
                var trig = instance_position(x, y, o_Trigger);
                if(trig != noone && !trig.requireinput)
                {
                    with(trig) 
                        event_user(0);
                }
            }
        }
    }
}