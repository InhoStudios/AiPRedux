//get close instances
//--------------------------------------------------------------------------------------------------------- 
objectUp = script_execute(scrGetColIdUp,1,clsSolidAll)
objectRight = script_execute(scrGetColIdRight,1,clsSolidAll)
objectDown = script_execute(scrGetColIdBottom,1,clsSolidAll)
objectDownTop = script_execute(scrGetColIdBottom,1,clsSolidTop)

if instance_exists(objectDownTop)
{
    if onSolidTop=1
    {
        objectDown=objectDownTop
    }
}

objectLeft = script_execute(scrGetColIdLeft,1,clsSolidAll)
//----------------------------------------------------------------------------------------------------------