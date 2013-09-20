(* 時間を受け取ったら、午前か午後かを文字列で返す *)
(* jikan : int -> string *)
let jikan h =
  if h < 12 then "AM"
            else "PM"

let test1 = jikan 9 = "AM"
let test2 = jikan 12 = "PM"
let test3 = jikan 23 = "PM"
let test4 = jikan 0 = "AM"
