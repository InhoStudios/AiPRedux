if keyboard_check(keyDown) and doubleJump==0 and (state=ON_GROUND or state=JUMPING or state=FALLING)
{
    crouching=1
}
else
{
    if script_execute(scrCheckColUp,13,clsSolidAll)==0
       crouching=0
}