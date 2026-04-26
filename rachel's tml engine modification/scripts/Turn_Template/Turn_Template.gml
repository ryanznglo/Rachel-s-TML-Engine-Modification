function Turn_Template(_turn) {

    switch (_turn) {

        case 0:
			// either one works, either you can put a string inside or a function.
			// check the Attack_Init script to see and add registered attacks.
			
			Attack_Example(timer);
			
            //Attack_Run("example");
			
			break;

        default:
			// if you want to just end the turn, please just use Attack_End()
			// thanks
			
			Attack_End();
			
            //Attack_Run("example");
			
			break;

    }
}