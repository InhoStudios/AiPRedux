//Inputs
//--------------------------------------------------------------------------------------------
keyRunR=ord("D")
keyRunL=ord("A")
keyJump=vk_space
keyDown=ord("S")
//--------------------------------------------------------------------------------------------
RIGHT=0
LEFT=1


//general
//--------------------------------------------------------------------------------------------
active=1        //whether player is active
face=RIGHT      //if player faces RIGHT or LEFT
facePrev=face      //if player faces RIGHT or LEFT
//--------------------------------------------------------------------------------------------

//speed
//--------------------------------------------------------------------------------------------
mass=0.3//CHANGEABLE                                                                                        

hs=0          //horizontal speed
vs=0            //vertical speed

hsOnce=0        //horizontal speed adding, which is 0 after adding
vsOnce=0        //vertical speed adding, which is 0 after adding

vsSave=0

hsOwn=0            //running horizontal speed

hsAdd=0            //horizontal speed to add
preobjectOn=noone	//previous object the player was on
objectOn=noone         //object on which player is (only moving)

hsMax=10        //max of hs                
vsMax=10        //max of vs

//max speeds for states
hsMax_ON_GROUND=4
hsMax_AIR=5
vsMax_AIR=7



mDirection=0    //direction
fric=0          //friction

fricAir=0.8     //CHANGEABLE friction in air 
grav=0          //gravitation
//--------------------------------------------------------------------------------------------

//sprite
//--------------------------------------------------------------------------------------------
script_execute(scrSpriteIniz)
//--------------------------------------------------------------------------------------------

//states
//--------------------------------------------------------------------------------------------
ON_GROUND=0
JUMPING=1
FALLING=2

state=ON_GROUND
statePrev=ON_GROUND
statePrevPrev=ON_GROUND

//special conditions
jumping=0
crouching=0
running=0
doubleJump=0
onSolidTop=0            //whether is on a solid who�s only from top solid
onMove=0                //whether is on moving objectis no solid!
makeOnGround=0          //whether state will become ON_GROUND, although down 


//ENALBE/DISALBE ABILITIES
RUNNING_ok=1            ////CHANGEABLE whether player is able to run
JUMPING_ok=1            ////CHANGEABLE whether player is able to jump
DOUBLEJUMP_ok=1         ////CHANGEABLE whether player is able to do a double jump
CROUCH_ok=1            ////CHANGEABLE whether player is able to crouch

//--------------------------------------------------------------------------------------------


//running
runPower=2.5//CHANGEABLE 

//jumping
jumpPower=3//CHANGEABLE 
jumpTimes=1         //max of 3, THIS IS NOT DOUBLE JUMP! it means how much frames the start impulse of jump will be given
doubleJumpTimes = 2;	//times player can double jump. not implimented yet.


//max pixels player can slope walk
stairsMax=3
//--------------------------------------------------------------------------------------------