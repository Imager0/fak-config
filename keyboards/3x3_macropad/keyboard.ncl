let { ColToRowKey, DirectPinKey, PhysicalEncoder, .. } = import "fak/keyboard.ncl" in
let { CH552G, .. } = import "fak/mcus.ncl" in

{
  mcu = CH552G,
  usb_dev = {
    vendor_id = 51966,  # 0xCAFE
    product_id = 47806, # 0xBABE
    product_ver = 256,  # 0x0100
  },
  
  # Описываем нашу сетку пинов
  matrix = {
    rows = [ 14, 15 ],     # Индексы строк: 0 и 1
    cols = [ 16, 17, 31 ], # Индексы столбцов: 0, 1 и 2
  },
  
  # Назначаем физические кнопки
  keys =
    let K = ColToRowKey in
    let D = DirectPinKey in
    [
      # Формат: K (номер_столбца) (номер_строки)
      K 0 0, K 1 0, K 2 0,  # Верхний ряд из 3 кнопок
      K 0 1, K 1 1, K 2 1,  # Нижний ряд из 3 кнопок
      
      D 34                  # Нажатие на энкодер (напрямую на пин)
    ],
    
  # Настройки "крутилки"
  encoders = [
    PhysicalEncoder 32 33 1 # Пин A, Пин B и разрешение (1 шаг)
  ]
}
