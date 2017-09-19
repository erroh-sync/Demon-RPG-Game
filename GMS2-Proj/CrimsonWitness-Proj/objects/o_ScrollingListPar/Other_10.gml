/// @description Display Item Declaration
// Loads the menuitems into the scrolling list

// load into the display list
displayitems = 0;

for(var i = 0; i < maxdisp + 1; i++){	
	if(array_height_2d(menuitems) > topdisp + i){
		displayitems[i] = menuitems[topdisp + i, selecteditem_x];
	}else
		displayitems[i] = 0;
}