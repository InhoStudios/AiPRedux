if !instance_exists(objectOn)
{
    hs*=fric
    hsOwn*=fric
        
}
else
{
    hsOwn*=fric
    hs=hsOwn  
    hs+=hsAdd
    vs=objectOn.vs
}

vs+=grav
