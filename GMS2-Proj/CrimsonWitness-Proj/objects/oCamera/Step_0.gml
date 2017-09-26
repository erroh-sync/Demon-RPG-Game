/// @description Update position based on the state

switch(state){
	case eCamState.eTrackPlayer:
		if(!instance_exists(oPlayer)){
			state = eCamState.eNone;
			break;
		}
		x_to = oPlayer.x;
		y_to = oPlayer.y;
		z_to = oPlayer.z;
		break;
	// The main camera state that follows the player around.
	case eCamState.eFollowPlayer:
		// Safety Check
		if(!instance_exists(oPlayer)){
			state = eCamState.eNone;
			break;
		}
		x_to = oPlayer.x;
		y_to = oPlayer.y;
		z_to = oPlayer.z+50;
		x = oPlayer.x+100;
		y = oPlayer.y+100;
		z = oPlayer.z+50;
		break;
	default:
		break;
}