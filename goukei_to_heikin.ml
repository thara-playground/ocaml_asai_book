(* 国語, 数学, 英語, 理科, 社会の5教科の点数を与えられたら、その合計点と平均点を
 * 組みにして返す *)
(* goukei_to_heikin : int -> int -> int -> int -> int -> int * int *)
let goukei_to_heikin l m e s c =
  (l + m + e + s + c, (l + m + e + s + c) / 5)

let test1 = goukei_to_heikin 100 100 100 100 100 = (500, 100)
let test2 = goukei_to_heikin 50 50 50 50 50 = (250, 50)
let test3 = goukei_to_heikin 100 50 100 50 0 = (300, 60)
