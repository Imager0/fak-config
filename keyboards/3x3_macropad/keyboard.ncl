let { Matrix, DirectPinKey, Encoder, .. } = import "fak/keyboard.ncl" in
let { CH552G, .. } = import "fak/mcus.ncl" in

{
  mcu = CH552G,
  usb_dev = {
    vendor_id = 51966,  # 0xCAFE
    product_id = 47806, # 0xBABE
    product_ver = 256,  # 0x0100
  },
  keys =
    let M = Matrix {
      rows = [ 14, 15 ],       
      cols = [ 16, 17, 31 ],   
    } in
    let D = DirectPinKey in
    [
      M 0 0, M 0 1, M 0 2,
      M 1 0, M 1 1, M 1 2,
      D 34
    ],
  
  encoders = [
    Encoder {
      pad_a = 32, 
      pad_b = 33, 
    }
  ]
}
