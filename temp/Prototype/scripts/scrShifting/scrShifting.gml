//"laufband" or treadmill
add=argument0

shiftObj=script_execute(scrGetColIdUp,1,objPlayer)

if instance_exists(shiftObj)
{
    if shiftObj.hsAddShifter!=add and shiftObj.state=shiftObj.ON_GROUND
    shiftObj.hsAddShifter=add
}

shiftObj=script_execute(scrGetColIdBottom,1,objPlayer)

if instance_exists(shiftObj)
{
    if shiftObj.state=shiftObj.JUMPING
    shiftObj.hs-=add
}