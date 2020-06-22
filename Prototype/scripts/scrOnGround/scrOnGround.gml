if state=ON_GROUND
{    
    //main  
      
    jumping=0
    jumpTimes=0
    doubleJump=0
    
    grav=0
	
	if (instance_exists(objectDown)){
	    if script_execute(scrCheckColDown,3,clsSolid)=1 || script_execute(scrCheckColDown,3,clsSolidTop)=1 && instance_exists(objectDown)
	       fric=(objectDown.fricGive-0.3)
	    else
	    {
	        fric=0.8
	    }
	}
    if instance_exists(objectDown)
    {
        if objectDown.moving=0
        objectOn=noone
    }
    
    //checking whether sliding
    
    sub=0   //sliding addition for hs
    slide=0
    
    //sliding to left?
    if collision_line(bbox_right-3,bbox_bottom+1,bbox_left,bbox_bottom+1,clsSolid,1,1)<0
    {
        add=0
        while(collision_point(bbox_left,bbox_bottom+add,clsSolidAll,1,1)<0 and add<10)
        {
            add+=1
        }
            
        sub=(add/50)*(mass*1.5)
        if sub>4
        sub=4
        
        sub*=-1
            
        if script_execute(scrCheckColLeft,1,clsSolidAll)==0
           slide=1
    }
    
    //sliding to right?        
    if collision_line(bbox_left+2,bbox_bottom+1,bbox_right,bbox_bottom+1,clsSolid,1,1)<0
    {
        add=0
        while(collision_point(bbox_right,bbox_bottom+add,clsSolidAll,1,1)<0 and add<10)
        {
            add+=1
        }
            
        sub=(add/50)*(mass*1.5)
        if sub>4
           sub=4
            
        if script_execute(scrCheckColRight,1,clsSolidAll)==0
           slide=1
    }
        
    //slide?
    if slide=1
    {
        hs+=sub
    }
        
    if instance_exists(objectOn)
    {                       
        hsAdd=objectOn.hs/(objectOn.fricGive*objectOn.fricGive)
        vs=objectOn.vs
    }
        
    if jumping==0 and vs!=0 and mDirection>180 and mDirection<360
    {
        vs=0
    }
         
    if running==0
    {
        //standing
        if crouching=1
        {
            if face=RIGHT
               mySprite = spriteCrouchR
            else
                mySprite = spriteCrouchL                 
        }
        else
        {
            if face=RIGHT
               mySprite = spriteStandR
            else
                mySprite = spriteStandL            
        }
    }
    else
    {
        //running
        image_speed=0.3 //RUNNING IMAGE SPEED
        if crouching=1    
        {
            if face=RIGHT
               mySprite = spriteCrouchGoR
            else
                mySprite = spriteCrouchGoL
        }
        else
        {
            if hsOwn>-6 and hsOwn<6
            {
                if face=RIGHT
                   mySprite = spriteRunR
                else
                    mySprite = spriteRunL
            }
            else
            {
                if face=RIGHT
                   mySprite = spriteRunRFast
                else
                    mySprite = spriteRunLFast
            }   
        }                     
    }
}