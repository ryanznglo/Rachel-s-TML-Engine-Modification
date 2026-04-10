function Turn_Template(_turn) {

    switch (_turn) {

        case 0:
			// either one works, either you can put a string inside or a function.
			// check the Attack_Init script to see and add registered attacks.
			
            Attack_Run("example");
			
            //Attack_Run(Attack_Example);
			
			break;

    }
}