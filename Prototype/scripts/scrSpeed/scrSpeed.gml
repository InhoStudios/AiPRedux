if state=ON_GROUND
{
    hsN=scrMaxMinMaker(hs,hsMax_ON_GROUND,-hsMax_ON_GROUND)
    hs=hsN        
}
    
if state=FALLING or state=JUMPING
{   
    vsN=scrMaxMinMaker(vs,vsMax_AIR,-vsMax_AIR)
    vs=vsN      
}
    
    
hsN=scrMaxMinMaker(hs,hsMax,-hsMax)
hs=hsN
    
vsN=scrMaxMinMaker(vs,vsMax,-vsMax)
vs=vsN