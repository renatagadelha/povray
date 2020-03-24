// Teste fontes de luz.pov
//

#include "colors.inc" 
#include "textures.inc"

background { color rgb <255,255,255> } 

camera{
  location <-2,3,-10>
  look_at<0,0,0>
}                                 

// Pontual    
/*light_source {
    <0,10,-3>, color Orange
}  */
          
// Direcional (simula luz do sol)          

light_source {
  <-5,10,-3>
  color Orange
  parallel
  point_at <0, 0, 0>
} 


// Spots
 
light_source { 
  <0,10,-3>
  color Orange
  spotlight        // luz do tipo spot (luz em formato de cone)
  radius 10        // raio de ação da luz
  falloff 20       // ângulo do cone de luz (deve ser maior que o raio)
  tightness 10     // atenuação da luz
  point_at <0,0,0> // direção para onde a fonte de luz está apontada
  }                 
  

    
torus {
    1, .5              // major and minor radius
    rotate -60*x      // so we can see it from the top 
    translate 2*x
    pigment { White}
}
    
    
sphere {
    <-1, 0, 0>, 1
    pigment { White}
}

cone {
    <6, -1, 0> 1,
    <6, 2, 0> 0      
    rotate 10*x
    pigment { White}
    }


         
plane{ <0,1,0>,-2
  pigment{ 
    checker
     color Green
     color Blue    
  }
}


