let { tap, .. } = import "fak/keycode.ncl" in
let kc = tap.reg.kc in

{
  layers = [
    [ 
      kc.A, kc.B, kc.C,   # Первый ряд кнопок
      kc.D, kc.E, kc.F,   # Второй ряд кнопок
      kc.G,               # Нажатие энкодера
      kc.H, kc.I          # Вращение энкодера (Влево и Вправо)
    ]
  ]
}
