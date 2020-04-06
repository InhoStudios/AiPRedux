//saves the offsets of a sprite
spr=argument0          //the sprite

sprEdgeX=x-sprite_get_xoffset(spr)
sprEdgeY=y-sprite_get_yoffset(spr)

returnList=ds_list_create()
ds_list_add(returnList,spr)
ds_list_add(returnList,y-(sprEdgeY+sprite_get_bbox_top(spr)))
ds_list_add(returnList,x-(sprEdgeX+sprite_get_bbox_right(spr)))
ds_list_add(returnList,y-(sprEdgeY+sprite_get_bbox_bottom(spr)))
ds_list_add(returnList,x-(sprEdgeX+sprite_get_bbox_left(spr)))

return returnList

