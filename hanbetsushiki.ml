(* 2次方程式 ax^2 + bx + c = 0 の係数a, b, cを与えられたら、判別式の値を返す *)
(* hanbetsushiki : float -> float -> float -> float *)
let hanbetsushiki a b c = b ** 2.0 -. 4.0 *. a *. c

let test1 = hanbetsushiki 1.0 1.0 1.0 = -3.0
let test2 = hanbetsushiki 1.0 2.0 1.0 = 0.0
let test3 = hanbetsushiki 2.0 3.0 1.0 = 1.0
let test4 = hanbetsushiki 1.0 5.0 4.0 = 9.0
let test5 = hanbetsushiki 2.0 (-4.0) 2.0 = 0.0
let test6 = hanbetsushiki 1.0 2.0 4.0 = -12.0

