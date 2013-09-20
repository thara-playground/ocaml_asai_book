(* 名前と成績の組を受け取ったら「○○さんの評価は△です」という文字列を返す *)
(* seiseki : string -> string -> string*)
let seiseki r = match r with
  (name, result) -> name ^ "さんの評価は" ^ result ^ "です"

let test1 = seiseki ("原", "B") = "原さんの評価はBです"
let test2 = seiseki ("今村", "A") = "今村さんの評価はAです"
