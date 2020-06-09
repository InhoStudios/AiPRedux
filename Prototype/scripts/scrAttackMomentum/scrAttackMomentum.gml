


var recorded = false;

if (!recorded){
	var tempHS  = hs;
	var tempVS = vs;
	hs = 0;
	vs = 0;
}


	dir = point_direction(x, y, mouse_x, mouse_y);
	hs += lengthdir_x(attackMomentum,dir);
	vs += lengthdir_y(attackMomentum-.3,dir);
	attackMomentum = attackMomentum - 2;
	
	if(attackMomentum<0){
		attackMomentum = 9;
		hs = tempHS;
		vs = tempVS;
		attackState = playerAttackStates.IDEL;
	}
	



