#include "colors.inc"

camera { 
     location <0, 2, -10> 
     look_at <0, 0, 0> 
} 

light_source { <2, 4, -3> color White} 

light_source { <-2, 4, -3> color White} 

light_source { <0, -4, -5> color White} 

sphere { 
	<0, 0, 0>, 2 
	texture { 
		pigment { 
			color White 
		} 
	  }
}   
sphere { 
	<0, 0, -2>, 0.5      
	texture { 
		pigment { 
			color Red 
		} 
	  }
} 
sphere { 
	<-1, 0.5, -1.5>, 0.2      
	texture { 
		pigment { 
			color Black 
		} 
	  }
}
sphere { 
	<1, 0.5, -1.5>, 0.2      
	texture { 
		pigment { 
			color Black 
		} 
	  }
}


plane {
        z, 15
        texture { 
		pigment { 
			color White 
		} 
	  }
} 
