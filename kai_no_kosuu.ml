#use "hanbetsushiki.ml"

(* 2次方程式 ax^2 + bx + c = 0 の係数a, b, cを与えられたら、解の個数を返す *)
(* kai_no_kosuu : float -> float -> float -> int*)
let kai_no_kosuu a b c =
  if hanbetsushiki a b c > 0.0 then 2
                               else if hanbetsushiki a b c = 0.0 then 1
                                                                 else 0


let test1 = kai_no_kosuu 1.0 2.0 3.0 = 0
let test2 = kai_no_kosuu 2.0 (-4.0) 2.0 = 1
let test3 = kai_no_kosuu 1.0 2.0 4.0 = 0
