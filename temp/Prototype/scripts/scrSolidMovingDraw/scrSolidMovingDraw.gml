//active?
if active==0
{
    //outside view!
}
else
{
    //moving H
    hs=addAmountH
    addsH+=1
        
    if addsH=addsMaxH
    {
        addsH=0
        addAmountH*=-1
    }   

    if hs>hsMax
          hs=hsMax
       
    if hs<-hsMax
       hs=-hsMax
         
    //moving V       
    vs=addAmountV
    addsV+=1
        
    if addsV=addsMaxV
    {
        addsV=0
        addAmountV*=-1
    }   

    if vs>vsMax
          vs=vsMax
       
    if vs<-vsMax
       vs=-vsMax    
       
    x+=hs
    y+=vs
    
    mDirection=point_direction(xprevious,yprevious,x,y) 
    
    draw_sprite(sprite_index,-1,x,y)
}

