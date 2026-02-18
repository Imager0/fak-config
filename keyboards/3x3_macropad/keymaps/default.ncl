let { kc, .. } = import "fak/keycodes.ncl" in

{
  layers.default = [
    kc.A, kc.B, kc.C, kc.D, kc.E,
    kc.F, kc.G, kc.H, kc.I, kc.J
  ]
}
