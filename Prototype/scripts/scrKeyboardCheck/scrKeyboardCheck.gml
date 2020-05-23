//--------------------------------------------------------------------------------------------------------- 
//Keyboard Check
//--------------------------------------------------------------------------------------------------------- 
facePrev=face

//running
if RUNNING_ok=1
script_execute(scrRunning)

//jumping
if JUMPING_ok = 1
script_execute(scrJumping)

//crouching
if CROUCH_ok=1
script_execute(scrCrouching)

//attacking
if ATTACKING_ok=1
script_execute(scrAttacking)

