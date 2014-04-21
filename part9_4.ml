(* 目的：受け取ったリスト list に 0 が含まれているかを調べる *)
(* contain_zero : int list -> bool *)
let rec contain_zero lst = match lst with
    [] -> false
  | first :: rest -> if first = 0 then true else contain_zero rest

(* テスト *)
let test1 = contain_zero [] = false
let test2 = contain_zero [0; 2] = true
let test3 = contain_zero [1; 2] = false
let test4 = contain_zero [1; 2; 3; 0; 5; 6; 7;] = true
let test5 = contain_zero [1; 2; 3; 4; 5; 6; 7;] = false

(* 目的:受け取った lst の各要素の和を求める *)
(* sum : int list -> int *)
let rec sum lst = match lst with
    [] -> 0
  | first :: rest -> first + sum rest

(* テスト *)
let test1 = sum [] = 0
let test2 = sum [2] = 2
let test3 = sum [1;3] = 4
let test4 = sum [1;2;3;4;5;6;7;8;9;10;] = 55

(* 問題9.4 *)
(* 整数のリストを受け取ったら、そのリストの長さを返す *)
let rec length lst = match lst with
    [] -> 0
  | first :: rest -> 1 + length rest

let test1 = length [] = 0
let test2 = length [1] = 1
let test3 = length [1;2] = 2
let test4 = length [1;2;3;] = 3

(* 問題9.5 *)
(* 整数のリストを受け取ったら、その中の偶数の要素のみを含むリストを返す *)
let rec even lst = match lst with
    [] -> []
  | first :: rest -> ( if first mod 2 == 0 then [first] else [] ) @ even rest

let test1 = even [] = []
let test2 = even [1] = []
let test3 = even [2] = [2;]
let test4 = even [1;2;3;4] = [2;4]
let test5 = even [2; 1; 6; 4; 7;] = [2;6;4]

(* 問題9.6 *)
(* 文字列のリストを受け取ったら、その中の要素を前から順に全部、くっつけた文字列を変えす *)
let rec concat lst = match lst with
    [] -> ""
  | first :: rest -> first ^ concat rest

let test1 = concat [] = ""
let test2 = concat ["A"] = "A"
let test3 = concat ["A"; "B"] = "AB"
let test4 = concat ["A"; "B"; "C"] = "ABC"
