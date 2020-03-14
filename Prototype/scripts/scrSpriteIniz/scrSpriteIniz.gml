//right side
//--------------------------------------------------------------------
spriteStandR=ds_list_create()
list=script_execute(scrSpriteAttributes,sprPlayerStandR)
ds_list_copy(spriteStandR,list)

spriteRunR=ds_list_create()
list=script_execute(scrSpriteAttributes,sprPlayerRunR)
ds_list_copy(spriteRunR,list)

spriteRunRFast=ds_list_create()
list=script_execute(scrSpriteAttributes,sprPlayerRunRFast)
ds_list_copy(spriteRunRFast,list)

spriteJumpR=ds_list_create()
list=script_execute(scrSpriteAttributes,sprPlayerJumpR)
ds_list_copy(spriteJumpR,list)

spriteFallR=ds_list_create()
list=script_execute(scrSpriteAttributes,sprPlayerFallR)
ds_list_copy(spriteFallR,list)

spriteJumpDoubleR=ds_list_create()
list=script_execute(scrSpriteAttributes,sprPlayerJumpDoubleR)
ds_list_copy(spriteJumpDoubleR,list)

spriteCrouchR=ds_list_create()
list=script_execute(scrSpriteAttributes,sprPlayerCrouchR)
ds_list_copy(spriteCrouchR,list)

spriteCrouchGoR=ds_list_create()
list=script_execute(scrSpriteAttributes,sprPlayerCrouchGoR)
ds_list_copy(spriteCrouchGoR,list)

//--------------------------------------------------------------------

//left side
//--------------------------------------------------------------------
spriteStandL=ds_list_create()
list=script_execute(scrSpriteAttributes,sprPlayerStandL)
ds_list_copy(spriteStandL,list)

spriteRunL=ds_list_create()
list=script_execute(scrSpriteAttributes,sprPlayerRunL)
ds_list_copy(spriteRunL,list)

spriteRunLFast=ds_list_create()
list=script_execute(scrSpriteAttributes,sprPlayerRunLFast)
ds_list_copy(spriteRunLFast,list)

spriteJumpL=ds_list_create()
list=script_execute(scrSpriteAttributes,sprPlayerJumpL)
ds_list_copy(spriteJumpL,list)

spriteFallL=ds_list_create()
list=script_execute(scrSpriteAttributes,sprPlayerFallL)
ds_list_copy(spriteFallL,list)

spriteJumpDoubleL=ds_list_create()
list=script_execute(scrSpriteAttributes,sprPlayerJumpDoubleL)
ds_list_copy(spriteJumpDoubleL,list)

spriteCrouchL=ds_list_create()
list=script_execute(scrSpriteAttributes,sprPlayerCrouchL)
ds_list_copy(spriteCrouchL,list)

spriteCrouchGoL=ds_list_create()
list=script_execute(scrSpriteAttributes,sprPlayerCrouchGoL)
ds_list_copy(spriteCrouchGoL,list)



//--------------------------------------------------------------------

//get sprite of standing right side
mySprite=spriteStandR