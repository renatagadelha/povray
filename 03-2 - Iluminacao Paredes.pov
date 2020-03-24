#include "colors.inc"

camera { 
     location <0, 2, -6> 
     look_at <0, 1, 2> 
} 

//Pontual
//light_source { <-1, 3, -1> color White}

//Direcional
light_source {
  <-5,10,-3>
  color White
  parallel
  point_at <0, 0, 0>
}

// Spot
light_source { 
  <0,10,-3>
  color White
  spotlight        // luz do tipo spot (luz em formato de cone)
  radius 10        // raio de a��o da luz
  falloff 30       // �ngulo do cone de luz (deve ser maior que o raio)
  tightness 5     // atenua��o da luz
  point_at <0,0,0> // dire��o para onde a fonte de luz est� apontada
  }  


sphere { 
	<0, 1, 2>, 1 
	texture { 
		pigment { 
			color Orange 
		} 
	}
	finish {
         ambient 0.1
         diffuse 0.5
         specular 0.3
        }
}


plane {
  y, -10   // Vetor, Dist�ncia
  texture {
    pigment {
        checker
        color Green
        color Blue
    }
  }
} 
plane {
  x, -10   // Vetor, Dist�ncia
  texture {
    pigment {
        checker
        color Green
        color Blue
    }
  }
} 

plane {
  x, 10   // Vetor, Dist�ncia
  texture {
    pigment {
        checker
        color Green
        color Blue
    }
  }
}
plane {
  z, 30   // Vetor, Dist�ncia
  texture {
    pigment {
        checker
        color Green
        color Blue
    }
  }
} 