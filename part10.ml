(* 目的：受け取ったlstの要素それぞれの先頭に n をくっつける *)
(* add_to_each : int -> int list list -> int list list *)
let rec add_to_each n lst = match lst with
    [] -> []
  | first :: rest -> (n :: first) :: add_to_each n rest

(* 目的：受け取った lst の接頭語のリストを求める *)
(* prefix : int list -> int list list *)
let rec prefix lst = match lst with
    [] -> []
  | first :: rest -> [first] :: add_to_each first (prefix rest)

(* テスト *)
let test1 = add_to_each 1 [] = []
let test2 = add_to_each 1 [[2]] = [[1; 2]]
let test3 = add_to_each 1 [[2]; [2; 3]] = [[1; 2]; [1; 2; 3]]

let test5 = prefix [] = []
let test6 = prefix [1] = [[1]]
let test7 = prefix [1;2] = [[1]; [1;2]]
let test8 = prefix [1;2;3;4] = [[1]; [1;2]; [1;2;3]; [1;2;3;4]]

(* List *)
let rec insert lst n = match lst with
    [] -> []
  | [e] -> if e < n then e :: [n] else n :: [e]
  | first :: rest -> if first < n then first :: insert rest n
                     else n :: first :: rest

let test9 = insert [] 1 = []
let test11 = insert [1;3] 2 = [1;2;3]
let test12 = insert [1;3;4;7;8] 2 = [1;2;3;4;7;8]
let test13 = insert [1;3;4;7;8] 5 = [1;3;4;5;7;8]
let test14 = insert [1;3;4;7;8] 9 = [1;3;4;7;8;9]

(* ins_sort *)
let ins_sort lst = match lst with
    [] -> []
  | first :: rest -> first :: rest

let test15 = ins_sort [] = []
let test16 = ins_sort [1;2] = [1;2]
let test16 = ins_sort [2;1] = [1;2]
let test17 = ins_sort [5;3;8;1;7;4] = [1;3;4;5;7;8]
