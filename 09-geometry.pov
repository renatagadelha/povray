// UniaoObjetos.pov
//

#include "colors.inc"
#include "woods.inc"

camera {
  location <1,6,-7>
  look_at <0,0,0> 
}
 
 
background { White }

light_source { <100,200,-500> color White}

light_source { 
  <0,10,-3>
  color White
  spotlight        // luz do tipo spot (luz em formato de cone)
  radius 2        // raio de ação da luz
  falloff 10       // ângulo do cone de luz (deve ser maior que o raio)
  tightness 1     // atenuação da luz
  point_at <-0.5,-0.5,0> // direção para onde a fonte de luz está apontada
  }                 
  

difference {
intersection{
 box {
  <-1, 0, -1> <1, 2, 1>
  pigment { OrangeRed }    
  finish {            // acabamento
  ambient 0.3     // simula luz que é espelhada ao redor dos objetos e que não vem diretamente de uma fonte de luz
 }
 }
 sphere {
  <0, 1, 0> 1.3
  pigment { Blue }
  finish {            // acabamento
   specular 0.3 // especifica o poder de reflexão de uma superfície
  } 
 }
}        

union{
 cylinder { 
   <0, -0.5, 0> <0, 2.5, 0>, 0.65 
 }
 cylinder { 
   <-1.25, 1, 0> <1.25, 1, 0>, 0.65 
 }
 cylinder { 
   <0, 1, -1.25> <0, 1, 1.25>, 0.65
 }                          
 pigment { Green }
}                
rotate <0, 30, 0>  
}                 