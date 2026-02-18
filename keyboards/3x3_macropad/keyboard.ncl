let { ColToRowKey, DirectPinKey, PhysicalEncoder, .. } = import "fak/keyboard.ncl" in
let { CH552G, .. } = import "fak/mcus.ncl" in

{
  mcu = CH552G,
  usb_dev = {
    vendor_id = 51966,  # 0xCAFE
    product_id = 47806, # 0xBABE
    product_ver = 256,  # 0x0100
  },
  
  matrix = {
    rows = [ 14, 15 ],
    cols = [ 16, 17, 31 ],
  },
  
  encoders =
    let E = PhysicalEncoder in
    [
      E 32 33 1, # Пин А, Пин B и чувствительность (шаг)
    ],
    
  keys =
    let M = ColToRowKey in
    let D = DirectPinKey in
    [
      M 0 0, M 1 0, M 2 0,
      M 0 1, M 1 1, M 2 1,
      D 34,
    ]
}
