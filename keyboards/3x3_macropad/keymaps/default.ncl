let { tap, .. } = import "fak/keycode.ncl" in
let kc = tap.reg.kc in

{
  layers = [
    [ 
      kc.A, kc.B, kc.C,
      kc.D, kc.E, kc.F,
      kc.G 
    ]
  ],
  
  encoders = [
    [
      { cw = kc.H, ccw = kc.I } 
    ]
  ]
}
