//write timer loop to prevent momentum spam



if (!instance_exists(objHitBox)){
	scrAttackMomentum();	//adds attack momentum
	scrCreateHitbox(objPlayer.x,objPlayer.y,objPlayer,sprPlayerAttackDefault,1);
	
}

