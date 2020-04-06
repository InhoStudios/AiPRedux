//starting jump
if keyboard_check_pressed(keyJump)
{
    //start jump
    if (state=ON_GROUND || airTime < airTime_MAX) and JUMPING_ok=1
    {
        if (script_execute(scrCheckColUp,1,clsSolidAll)==0||graceTimer >0)
        {  
            

            vs=-jumpPower
            jumping=1
            state=JUMPING
            onMove=0
            onSolidTop=0
            objectOn=noone
            exit
        }
    }

    //double jump
    if state=FALLING or state=JUMPING and DOUBLEJUMP_ok=1
    {
        if doubleJump==0 and crouching==0
        {
    
            if script_execute(scrCheckColUp,5,clsSolidAll)==0
            {  
               vs=-jumpPower*1.9
            }

            doubleJump=1
			//IMPLIMENT DOUBLE JUMP TIMES HERE::::
            //jumpTimes=3
            state=JUMPING
        }   
    }

}

//makes differnt heights of jump possible
if keyboard_check(keyJump) and state=JUMPING and !instance_exists(objectUp) and jumping=1 and JUMPING_ok=1
{
    if jumpTimes<3
    {
        vs-=jumpPower/3
        jumpTimes+=1
        state=JUMPING
        jumping=1
    }
}

//stopped holding jump button?
if keyboard_check_released(keyJump) and JUMPING_ok=1
{
    jumpTimes=3
}

if(state = ON_GROUND) {
	airTime = 0;
} else {
	airTime ++;
}