//what the player does every step

if active==0
{
    image_speed=0
}
else
{
    script_execute(scrGetCloseInstances)
            
    script_execute(scrKeyboardCheck)
    
    script_execute(scrSetConditions)    
        
    script_execute(scrStates)   
    
    script_execute(scrMoving)   
    
    script_execute(scrDrawing)  
}
