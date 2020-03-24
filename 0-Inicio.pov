#include "colors.inc"

camera { 
     location <0, 2, -30> 
     look_at <0, 0, 0> 
} 

light_source { <2, 4, -3> color Red} 

light_source { <-2, 4, -3> color Blue} 

light_source { <0, -4, -5> color Green} 

sphere { 
	<0, 0, 0>, 2 
	texture { 
		pigment { 
			color White 
		} 
	  }
}

plane {
        y, 15
        texture { 
		pigment { 
			color White 
		} 
	  }
} 
plane {
        y, -15
        texture { 
		pigment { 
			color White 
		} 
	  }
}   
plane {
        x, 15
        texture { 
		pigment { 
			color White 
		} 
	  }
} 
plane {
        x, -15
        texture { 
		pigment { 
			color White 
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
