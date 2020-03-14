//gravity and friction
//--------------------------------------------------------------------------------------------------------- 

//friction and gravity
script_execute(scrFrictionAndGrav)

//friction and gravity
script_execute(scrMoveSpecials)
   
//speed
script_execute(scrSpeed)

//MOVING X COORDINATE
//-----------------------------
x+=hs+hsOnce
hsOnce=0
//-----------------------------

//stairs down? 
script_execute(scrStairsDown)

//MOVING Y COORDINATE
//-----------------------------
y+=vs+vsOnce
vsAdd=0
vsOnce=0
//-----------------------------

//WHAT`S THE DIRECTION?
mDirection=point_direction(xprevious,yprevious,x,y)

script_execute(scrCollisionCheck) 

script_execute(scrDeadAndOutsideRoom)