
  #include "colors.inc"
  camera {
    location <10, 2, -12>
    look_at <9, 0, 0>
  }

  light_source { <500,500,-1000> White }
  plane {
    y,0
    pigment { checker Green Pink }
  }                  
  

  text {
    ttf "timrom.ttf"    // fonte da letra
    "Renata" 0.5,  // texto desejado e profundidade 
    <2,0,0>                   // distancia entre letras  
    translate 2*x
    pigment { Red }
  }               
 




  


     
   



  