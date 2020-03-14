//state
//---------------------------------------------------------------------------------------------------------  
    
        if script_execute(scrCheckColDown,1,clsSolidAll)=1 or onSolidTop=1 or instance_exists(objectOn)
        {
            if statePrev!=ON_GROUND
            {
                state=ON_GROUND 
            }
            
            ok=0
            oOn=script_execute(scrGetColIdBottom,6,clsSolidMoving)
            if instance_exists(oOn)
            {
                if oOn.vs<6 and oOn.vs>0
                   ok=1
            }
                
            if script_execute(scrCheckColDown,2,clsSolid)==0 and ok=0
            {
                objectOn=noone
                onSolidTop=0
            } 
        }
        else
        {   
            if onSolidTop==0
            {   
 
                if makeOnGround=1
                { 
                   state=ON_GROUND
                   makeOnGround=0
                }
                else
                {
                    if vs>0
                       state=FALLING
                    else
                        state=JUMPING
                }
            }
            else
            {
                if script_execute(scrCheckColDown,1,clsSolidTop)=1 and mDirection>180 and mDirection<360
                {
                    state=ON_GROUND
                }
            }
        }
     


statePrevPrev=statePrev
statePrev=state