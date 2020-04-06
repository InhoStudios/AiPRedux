if state=JUMPING or state=FALLING
{
    onSolidTop=0 
    
    if statePrev=FALLING or statePrev=JUMPING   
    objectOn=noone     
        
    grav=mass+global.roomGravity
        
    fric=fricAir
         
    image_speed=0.5
    if doubleJump==0
    {
        if crouching=1
        {
            if face=RIGHT
               mySprite = spriteCrouchR
            else
                mySprite = spriteCrouchL         
        }
        else
        {
            //jumping or falling
            if state=FALLING
            {
                if face=RIGHT
                   mySprite = spriteFallR
                else
                    mySprite = spriteFallL 
            }
            else
            {
                if face=RIGHT
                   mySprite = spriteJumpR
                else
                    mySprite = spriteJumpL 
            }
        }
    }   
    else
    {
        //double jumping, while falling or jumping
        if face=RIGHT and facePrev=RIGHT
           mySprite = spriteJumpDoubleR
        if face=LEFT and facePrev=LEFT
           mySprite = spriteJumpDoubleL            
    } 
}