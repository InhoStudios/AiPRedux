col=2
//0=no collision; 
//1=normal collision; 
//2=will be turned into 1,3,4 or 5;
//3=collision with solidTop;
//4=collision with solidTop, but moves the player only when there are stairs!
//5=like "3" but also has collision with a normal solid!

stairsR=0
stairsL=0

while(script_execute(scrCheckColAll,0,clsSolid)=1 and col>0)
{  
    if col=2
    COLTOP=script_execute(scrGetColIdBottom,0,clsSolidTop)    //saving the solidtop where player is on
    
    COT=script_execute(scrGetColIdAll,0,clsSolidTop)
    COT2=script_execute(scrGetColIdAll,0,clsSolidAll) 

    //check whether collision with solidTop     
    if instance_exists(COT) and col=2//is there a collision with a clsSolidTop,
    //player doesnt climb and is that the first cycle of loop? 
    {
        bbox_bottomPrev=bbox_bottom-vs//getting the y coordinate of previous step's bbox bottom
                    
        colObjYEnd=COT.bbox_top //where the first pixel at point(self.x,bottom of COT) 
        ySave=colObjYEnd
                
        X=script_execute(scrGetMiddle,bbox_left-hs,bbox_right-hs,COT)
        COT=collision_point(X,colObjYEnd,clsSolidTop,1,1)
           
        add=0     
        while(!instance_exists(COT) and add<100)
        {
            add+=1
            COT=collision_point(X,colObjYEnd+add,clsSolidTop,1,1)
        }
        
        COT=script_execute(scrGetColIdAll,0,clsSolidTop)
                 
        if add<100
        {
            colObjYEnd=ySave+add
            
            if instance_exists(COT)
            {
                if COT.moving=1
                   colObjYEnd-=COT.vs
            }
        }
           
        //now we have last pixel in the vertical row at horizontal position "X" of COT!
         
        if bbox_bottomPrev<colObjYEnd
        {  
            if instance_exists(COT2)
            {
                col=5
            }
            else
            {
                if instance_exists(COT)
                {
                    if COT.moving=1
                    {
                        objectOn=COT
                    }
                    else
                        objectOn=noone
                }
            
                dire=90         //makes that player will move up, and stop on top of the collision object
                onSolidTop=1   
               
                col=3           //makes that the dire wont be changed to mDirection+180
            }
        }
        else
        {
            if !instance_exists(COT2)
            { 
                col=4                    //makes that the script checks whether there are stairs, if not break
            }
        }
    }

    if col==2 or col=5      //is that the first cycle of loop with no changes?
    {  
       if col=2
          col=1
          
       dire=mDirection+180
       
       if dire>360
          dire-=360
    }  
               
    //checking whether stairs UP
    if (state=ON_GROUND) and stairsR==0 and stairsL==0
    {
        if hs>0
        {
            colR=collision_point(bbox_right,bbox_bottom,clsSolid,1,1)
            
            if instance_exists(colR)
            {
                colR2=collision_point(bbox_right,bbox_bottom,clsSolid,1,1)
                    
                //how high is the stair?
                stairHeight=0       //height of stair to climb on in pixels
                    
                colPX=bbox_right
                colPY=bbox_bottom
                    
                add=0
                while(instance_exists(collision_point(colPX,colPY-add,clsSolidAll,1,1)))
                {
                    add+=1
                }
                    
                stairHeight=add
                    
                colR3=script_execute(scrGetColIdUp,0,clsSolid)
                colR4=collision_rectangle(bbox_left,bbox_top-stairHeight,bbox_right,bbox_bottom-stairHeight,clsSolidAll,1,1)
                colR5=script_execute(scrGetColIdAll,0,clsSolidTop)
                    
                if  stairHeight<=stairsMax and stairHeight>0 and instance_exists(colR2) and ((!instance_exists(colR4) and !instance_exists(colR3)) or 
                (colR2!=colR4 and instance_exists(colR5)))
                {
                    dire=90 
                    stairsR=1
                }
            }
        }
        else
        {
            colL=collision_point(bbox_left,bbox_bottom,clsSolid,1,1)
            
            if instance_exists(colL)
            {
                colL2=collision_point(bbox_left,bbox_bottom,clsSolid,1,1)
                    
                //how high is the stair?
                stairHeight=0       //height of stair to climb on in pixels
                    
                colPX=bbox_left
                colPY=bbox_bottom
                    
                add=0
                while(instance_exists(collision_point(colPX,colPY-add,clsSolidAll,1,1)))
                {
                    add+=1
                }
                    
                stairHeight=add
                    
                colL3=script_execute(scrGetColIdUp,0,clsSolid)
                colL4=collision_rectangle(bbox_left,bbox_top-stairHeight,bbox_right,bbox_bottom-stairHeight,clsSolidAll,1,1)
                colL5=script_execute(scrGetColIdAll,0,clsSolidTop)                 
                    
                if  stairHeight<=stairsMax and stairHeight>0 and instance_exists(colL2) and (!instance_exists(colL4) or 
                (colL2!=colL4 and instance_exists(colL5)))
                {
                    dire=90  
                    stairsL=1
                }
            }
        }
    }
    
     
    COL=script_execute(scrGetColIdAll,0,clsSolidTop)
    COL2=script_execute(scrGetColIdAll,0,clsSolidAll)  
      
    if instance_exists(COL) and !instance_exists(COL2) and (col!=3)        //if collision only with solidTop object, but no legal collision
    {
        if col!=5
        {
            break
        }
    }
    
    if instance_exists(COL) and !instance_exists(COL2) and COL!=COLTOP
    {
        break
    }
    
    if col=4 and (stairsR==0 and stairsL==0)        //if collision with solidTop, but no legal collision and no stairs  
    {  
       break
    } 
    
    //moving one pixel into direction of disappear from the solid collision!
    x=x+lengthdir_x(1,dire)
    y=y+lengthdir_y(1,dire)  
    
      
}

makeOnGround=0
if (col=1 or col=3) and stairsR==0 and stairsL==0
{  
    hsSave=hs
    vsSave=vs
    
    hs=0
    vs=0

    if collision_rectangle(bbox_left+hsSave,bbox_top,bbox_right+hsSave,bbox_bottom-3,clsSolidAll,1,1)<0 and (
    script_execute(scrCheckColDown,1,clsSolid)=1 or script_execute(scrCheckColUp,1,clsSolid)=1)
    {
        hs=hsSave
        
        x+=hs
        
        if script_execute(scrCheckColUp,1,clsSolidAll)==0 and state!=JUMPING
        makeOnGround=1
        
        exit;
    }
    else
    {
        if collision_rectangle(bbox_left,bbox_top+vsSave,bbox_right,bbox_bottom+vsSave,clsSolidAll,1,1)<0 
        {
            vs=vsSave
        
            y+=vs
        
            exit;
        }
    }
}

stairsR=0
stairsL=0
col=0


