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
  radius 10        // raio de ação da luz
  falloff 30       // ângulo do cone de luz (deve ser maior que o raio)
  tightness 5     // atenuação da luz
  point_at <0,0,0> // direção para onde a fonte de luz está apontada
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
  y, -10   // Vetor, Distância
  texture {
    pigment {
        checker
        color Green
        color Blue
    }
  }
} 
plane {
  x, -10   // Vetor, Distância
  texture {
    pigment {
        checker
        color Green
        color Blue
    }
  }
} 

plane {
  x, 10   // Vetor, Distância
  texture {
    pigment {
        checker
        color Green
        color Blue
    }
  }
}
plane {
  z, 30   // Vetor, Distância
  texture {
    pigment {
        checker
        color Green
        color Blue
    }
  }
} 