#include "colors.inc"
#include "shapes.inc"
#include "textures.inc"
//#include "shapes_lo.inc"

camera { 
     location <4, 3, -6> 
     look_at <0, 0, 0> 
} 


light_source { <4, 3, -1> color White} 



sphere { 
	<0, 1, 0>, 1 
	texture { 
		pigment { 
			color Red 
		} 
		finish {
                 ambient 0.1
                 diffuse 0.5
                 specular 0.3
                }
	}
}
box { 
	<-1.5, 0, 2>
	<1.5, 2, 3>
	texture { 
		pigment { 
			color SeaGreen 
		}
		finish {
                 ambient 0.3
                 diffuse 0.5
                 specular 0.5
                }
	}
}
cone { 
	<0, 3, -3>, 0
	<0, 0, -3> , 1
	texture { 
		pigment { 
			color Pink 
		}
		finish {
                 ambient 0.1
                 diffuse 0.5
                 specular 0.3
                }
	}
}


plane {
  y, 0   // Vetor, Distância
  texture {
    pigment {
        checker
        color Red
        color White
    }
  }
}

