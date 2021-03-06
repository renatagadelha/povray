#include "colors.inc"
#include "golds.inc"
camera {
  location <10, 6, -20>
  look_at <0, 5, 0>
  angle 45
}
background { color rgb<0.2, 0.4, 0.8>  }
light_source { <100, 100, -100> color rgb 1 }
plane {
  y, 0
  pigment { checker color Red, color Green scale 10 }
}
sor {
  6,
  <0.0,  -0.5>,
  <1.0,   0.0>,
  <2.0,   2.0>,
  <0.8,   3.0>,
  <1.0,   4.0>,
  <1.0,   4.5>
  open
  texture { T_Gold_1B }
  scale <2,2,2>
}