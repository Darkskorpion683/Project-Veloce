if(obj_raceMapController.raceSelection == raceSelect){
	animationIndex+= 0.125
	if (animationIndex >= 8){
        animationIndex = 1;
    }
}
else{
	animationIndex = 0
}

draw_sprite_ext(spr_mapBeacon,animationIndex,x,y,2,2,0,c_white,1)