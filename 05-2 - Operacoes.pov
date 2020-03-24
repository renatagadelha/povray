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
  radius 2        // raio de a��o da luz
  falloff 10       // �ngulo do cone de luz (deve ser maior que o raio)
  tightness 1     // atenua��o da luz
  point_at <-0.5,-0.5,0> // dire��o para onde a fonte de luz est� apontada
  }                 
  

difference {
intersection{
 box {
  <-1, 0, -1> <1, 2, 1>
  pigment { OrangeRed }    
  finish {            // acabamento
  ambient 0.3     // simula luz que � espelhada ao redor dos objetos e que n�o vem diretamente de uma fonte de luz
 }
 }
 sphere {
  <0, 1, 0> 1.3
  pigment { Blue }
  finish {            // acabamento
   specular 0.3 // especifica o poder de reflex�o de uma superf�cie
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