let { tap, .. } = import "fak/keycode.ncl" in

# Создаем короткий алиас для обычных кнопок
let kc = tap.reg.kc in

{
  # Определяем слои (у нас пока только один базовый нулевой слой)
  layers = [
    [ 
      kc.A, kc.B, kc.C, kc.D, kc.E,
      kc.F, kc.G, kc.H, kc.I, kc.J
    ]
  ]
}
