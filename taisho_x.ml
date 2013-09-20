(* x座標とy座標の組で表された平面座標を受け取り、x軸について対象な点の座標を
 * 返す *)
(* taisho_x : int * int -> int * int *)
let taisho_x xy = match xy with
  (x, y) -> (-x, y)

let test1 = taisho_x (0, 0) = (0, 0) 
let test2 = taisho_x (10, 20) = (-10, 20) 
let test3 = taisho_x (20, -10) = (-20, -10)
