(* 学生ひとり分のデータ（名前、点数、成績）*)
type gakusei_t = {
  namae : string;
  tensuu : int;
  seiseki : string;
}

let list1 = []
let list2 = [{namae = "asai"; tensuu = 70; seiseki = "B"}]
let list3 = [{namae = "asai"; tensuu = 70; seiseki = "B"};
            {namae = "kaneko"; tensuu = 85; seiseki = "A"}]
let list4 = [{namae = "yoshida"; tensuu = 80; seiseki = "A"};
            {namae = "asai"; tensuu = 70; seiseki = "B"};
            {namae = "kaneko"; tensuu = 85; seiseki = "A"}]

(* 目的：学生リスト lst のうち成績が A の人の数を返す *)
(* countA : gakusei_t list -> int *)
let rec count_A lst = match lst with
    [] -> 0
  | ({ namae = n; tensuu = t; seiseki = s } as first) :: rest
      -> if s = "A" then 1 + count_A rest
                    else count_A rest

let test1 = count_A list1 = 0
let test2 = count_A list2 = 0
let test3 = count_A list3 = 1
let test4 = count_A list4 = 2

(* 名前、身長(kg)、体重(kg)、誕生日(月と日)、血液型を格納する *)
type person_t = {
  height : int;       (* 身長(m) *)
  weight : int;       (* 体重(kg) *)
  birthday: string;   (* 誕生日 *)
  blood_type: string; (* 血液型 *)
}

(* person_t 型のデータのリストを受け取ったら、血液型がA型の人の数を返す *)
let rec count_ketsueki_A lst = match lst with
    [] -> 0
  | ({height = h; weight = w; birthday= bd; blood_type= b}) :: rest ->
        if b = "A" then 1 + count_ketsueki_A rest else count_ketsueki_A rest

let lst1 = []
let lst2 = [{height = 170; weight = 70; birthday= "2013/01/01"; blood_type= "B"}]
let lst3 = [{height = 170; weight = 70; birthday= "2013/01/01"; blood_type= "A"}]
let lst4 = [{height = 170; weight = 70; birthday= "2013/01/01"; blood_type= "A"};
            {height = 170; weight = 70; birthday= "2013/01/01"; blood_type= "B"}]
let lst5 = [{height = 170; weight = 70; birthday= "2013/01/01"; blood_type= "B"};
            {height = 170; weight = 70; birthday= "2013/01/01"; blood_type= "B"}]
let lst6 = [{height = 170; weight = 70; birthday= "2013/01/01"; blood_type= "A"};
            {height = 170; weight = 70; birthday= "2013/01/01"; blood_type= "B"};
            {height = 170; weight = 70; birthday= "2013/01/01"; blood_type= "A"}]

let test5 = count_ketsueki_A lst1 == 0
let test6 = count_ketsueki_A lst2 == 0
let test7 = count_ketsueki_A lst3 == 1
let test8 = count_ketsueki_A lst4 == 1
let test9 = count_ketsueki_A lst5 == 0
let test10 = count_ketsueki_A lst6 == 2
