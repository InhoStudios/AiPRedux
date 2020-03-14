//running right
fc=1

if crouching==0
   runP=runPower
else
    runP=runPower/2

if instance_exists(objectDown) and state=ON_GROUND
   fc=objectDown.runGive
   
if keyboard_check(keyRunR) and !(running=1 and face=LEFT)
{
    //want to run to right
    face=RIGHT
    
    if state=ON_GROUND
    {
        running=1
            if collision_line(bbox_right+1,bbox_bottom-4,bbox_right+1,bbox_top,clsSolidAll,1,1)<0 
            {  
               runAcc=runP/fc
               if runAcc<0
               {
                    runAcc=0
               }

                hs+=runAcc
                hsOwn+=runAcc
            }
    }
	else
	{
            
	}

    if state=JUMPING or state=FALLING 
    {
        if script_execute(scrCheckColRight,1,clsSolidAll)==0
        {
            runAcc=runP/2
            if hs+runAcc<hsMax_AIR
            {
                hs+=runAcc
                hsOwn+=runAcc
            }
        }  
    }
}

//stop running right
if keyboard_check_released(keyRunR) and !(running=1 and face=LEFT)
{
    //want to stop running to the right
    running=0
}

//running left
if keyboard_check(keyRunL) and !(running=1 and face=RIGHT)
{
    //want to run to left
    face=LEFT
    if state=ON_GROUND
    {
        running=1

        if collision_line(bbox_left-1,bbox_bottom-4,bbox_left-1,bbox_top,clsSolidAll,1,1)<0
        {  
            runAcc=runP/fc
            if runAcc<0
               runAcc=0

            hs-=runAcc
            hsOwn-=runAcc
        }
    }

    if state=JUMPING or state=FALLING
    {
        if script_execute(scrCheckColLeft,1,clsSolidAll)==0
        {  

                runAcc=runP/2

 
           if hs-runAcc>-hsMax_AIR
           {
                hs-=runAcc
                hsOwn-=runAcc
           }
        }   
    }

}

//stop running left
if keyboard_check_released(keyRunL) and !(running=1 and face=RIGHT)
{
    //want to stop running to the left
    running=0
}