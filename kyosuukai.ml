#use "hanbetsushiki.ml"

(* 2次方程式 ax^2 + bx + c == 0 の係数a, b, c（いずれも実数)を与えられたら、虚数
 * 解を持つかを判定する *)
(* kyosuukai : float -> float -> float -> bool *)
let kyosuukai a b c = hanbetsushiki a b c < 0.0
(* b ** 2.0 -. 4.0 *. a *. c < 0.0 *)

let test1 = kyosuukai 1.0 5.0 4.0 = false
let test2 = kyosuukai 2.0 (-4.0) 2.0 = false
let test3 = kyosuukai 1.0 2.0 4.0 = true
