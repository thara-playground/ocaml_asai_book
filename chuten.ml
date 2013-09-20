(* x座標とy座標の組で表された平面座標を２つ受け取り、その中点の座標を返す *)
(* chuten : int * int -> int * int -> int * int *)
let chuten xy1 xy2 = match xy1 with
  (x1, y1) -> match xy2 with
    (x2, y2) -> ((x1 + x2) / 2, (y1 + y2) / 2)

let test1 = chuten (0, 20) (0, 10) = (0, 15)
let test2 = chuten (0, 10) (0, 20) = (0, 15)
let test3 = chuten (10, 0) (20, 0) = (15, 0)
let test4 = chuten (20, 0) (10, 0) = (15, 0)

let test5 = chuten (20, 30) (30, 20) = (25, 25)
let test6 = chuten (50, 15) (30, 45) = (40, 30)
