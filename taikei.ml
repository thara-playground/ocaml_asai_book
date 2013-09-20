let bmi m kg = kg /. m ** 2.

(* 与えられた身長(m)と体重(kg)からBMI指数を計算し、その数値によって体型を返す。*)
(* taikei : float -> flaot -> string *)
let taikei m kg = 
  if bmi m kg < 18.5 then "やせ"
                     else if 18.5 <= bmi m kg && bmi m kg < 25. then "標準"
                                                                else if 25. <=
                                                                  bmi m kg &&
                                                                  bmi m kg <
                                                                  30. then "肥満"
                                                                                                         else "高度肥満"
                                                   

let test1 = taikei 1.13 20.0 = "やせ"
let test2 = taikei 1.63 57.0 = "標準"
let test3 = taikei 1.71 57.0 = "標準"
