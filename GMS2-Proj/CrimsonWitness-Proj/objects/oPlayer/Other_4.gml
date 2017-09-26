if(!instance_exists(oCamera))
	instance_create_layer(x,y,layer,oCamera)

oCamera.state = eCamState.eFollowPlayer;