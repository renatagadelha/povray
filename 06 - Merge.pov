// Merge.pov
//

#include "colors.inc"  

camera {
  location <-1.5,2,-6>
  look_at <0,1.5,0> 
}
          
background { LightSteelBlue}
 
light_source { <110,200,-600> color White}


plane {
  y,  0  
  pigment { Gray }
}          

#declare Ampulheta = merge{
 cone { 
  <0, 0, 0>, 1.2 // Center and radius of one end 
  <0, 1.8, 0>, 0 // Center and radius of other end 
  open // Removes end caps 
 }
 cone { 
  <0, 3, 0>, 1.2 // Center and radius of one end 
  <0, 1.2, 0>, 0 // Center and radius of other end 
  open // Removes end caps 
 }
}
  
#declare Estrutura = merge{
 box {
  <-1.3, 3, -1.3> <1.3, 3.2, 1.3> 
 }
 cylinder { 
   <-1, 0, -1> <-1, 3, -1>, 0.12 
 }
 cylinder { 
   <1, 0, -1> <1, 3, -1>, 0.12 
 }
 cylinder { 
   <-1, 0, 1> <-1, 3, 1>, 0.12 
 }
 cylinder { 
   <1, 0, 1> <1, 3, 1>, 0.12 
 }
 box {
  <-1.3, 0, -1.3> <1.3, 0.2, 1.3> 
 }
}  
  
object {
 Ampulheta
 pigment {BrightGold filter 0.7}
}                               

object {
 Estrutura
 pigment {BrightGold}
}

