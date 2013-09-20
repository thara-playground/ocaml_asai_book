(* 鶴と亀の数の合計 s と足の数の合計 a から鶴の数を計算する *)
(* trurukame = int -> int -> int *)
let tsurukame s a = s - (a - s * 2) / 2

let test1 = tsurukame 1 2 = 1
let test2 = tsurukame 1 4 = 0
let test3 = tsurukame 2 6 = 1
let test4 = tsurukame 3 8 = 2
let test5 = tsurukame 3 10 = 1 
