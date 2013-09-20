(* 与えられた鶴の数 t と亀の数 k から、足の数を計算する *)
(* tsurukame_no_ashi : int -> int -> int*)
let tsurukame_no_ashi t k = t * 2 + k * 4

let test1 = tsurukame_no_ashi 1 0 = 2
let test2 = tsurukame_no_ashi 0 1 = 4
let test3 = tsurukame_no_ashi 1 1 = 6
let test4 = tsurukame_no_ashi 2 3 = 16
