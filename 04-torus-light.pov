// Modelo de iluminação de superfícies
//

#include "colors.inc" 
//#include "stones.inc"
//#include "textures.inc"

background { color rgb <255,255,255> } 

camera{
  location <0,-1,-5>
  look_at<0,0,0>
}

light_source { 
  <3,10,-3>
  color White
  }

torus {
    1, 0.5            // raio maior e menor
    rotate 90*x      // rotação para ver do topo
    pigment { Red }
    
    finish {            // acabamento
        ambient 0.3     // simula luz que é espelhada ao redor dos objetos e que não vem diretamente de uma fonte de luz
        diffuse 0.5     // determina quanto da luz que é vista vem de uma fonte de luz ou do ambiente
        specular 1.0 // especifica o poder de reflexão de uma superfície

     } 
}             
      
plane{ <0,1,0>,-2
  pigment{ Yellow }
}


