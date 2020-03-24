// UniaoObjetos.pov
//

#include "colors.inc"
#include "woods.inc"

camera {
  location <0,3.5,-7>
  look_at 0 
}
 
 
background { LightSteelBlue }

light_source { <500,500,-1000> color White}


plane {
  y, 0   
  pigment { checker Green White }
}

union{
  //tampo
 cylinder { 
   <0, 0, 0> <0, 2.5, 0>, 0.5 
 }
 //base
 box {
  <-1.5, 0, -0.25> <1.5, 0.5, 0.25>
 }
 //pés
 box {
  <-0.25, 0, -1.5> <0.25, 0.5, 1.5> 
 }
 cylinder { 
   <0, 2, 0> <0, 2.5, 0>, 3 
 }
 texture { P_WoodGrain1A }
 rotate <0, 30, 0>
}                               