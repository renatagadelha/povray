// Taca.pov
//

#include "colors.inc"  
#include "glass.inc"  

camera {
  location <0,5,-10>
  look_at 0 
  angle 36
}
 
background { LightSteelBlue}
 
light_source { <500,500,-500> color White}


plane {
  y, -1   
  pigment { White }
}

/*
box { <-1, -1, 3>, <1, -0.5, 5> 
        pigment { Green } 
}   */

#declare Taca = merge {
  //Copa
  cone {
    <0,2,0>, 1   // Centro, Raio
    <0,0.5,0>, 0.2    // Centro, Raio
    open   
  }        
  cylinder {                
    <0, 0.5, 0> <0, 0.55, 0>, 0.2      
  }                                                 
    
  //haste
  cylinder {                
    <0, -1, 0> <0, 0.5, 0>, 0.11      
  }                                                 
  
  
  //pé
  cylinder { 
     <0, -1, 0> <0, -0.95, 0>, 0.8
  }                
       
}
     
object {
 Taca
 pigment {BrightGold filter 0.7}
 //interior { ior Water_Ior }
 // finish{ F_Glass7}
         
  finish {
    specular 0.6        // qtd iluminacao especular
    roughness 0.01      // tamanho do spot
    ambient 0.1           // qtd de iluminacao ambiente
    diffuse 0.3         // qtd de iluminacao difusa
    brilliance 0.3        // brilho
    reflection {        // reflexo
      0.1, 1.0          // minimo e maximo de reflexo
      fresnel on        // considera o reflexo com indice de refracao
    }
  } 
}                               

box { <-1, -1, 3>, <1, 1.5, 4> 
        rotate -30*y
        pigment { White } 
}



  