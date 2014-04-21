(* 駅名の情報を格納する型 *)
type ekimei_t = {
  kanji   : string; (* 漢字の駅名 *)
  kana    : string; (* ひらがなの駅名 *)
  romaji  : string; (* ローマ字の駅名 *)
  shozoku : string; (* 駅が所属する路線名 *)
}

(* ekimei_t型のデータを受け取って、「路線名、駅名（かな）」の形式の文字列を返す *)
let hyoji ekimei = match ekimei with
  {kanji = kj; kana = kn; romaji = rj; shozoku = sz} ->
    sz ^ "、" ^ kj ^ "（" ^ kn ^ "）"

(* 駅と駅の接続情報を格納するレコード型 *)
type ekikan_t = {
  kiten: string;  (* 起点の駅名 *)
  shuten: string; (* 終点の駅名 *)
  keiyu: string;  (* 経由する路線名 *)
  kyori: int;     (* 2駅間の距離(km) *)
  jikan: string;  (* 所要時間 *)
}

let test1 =
  hyoji {kanji = "茗荷谷"; kana = "みょうがだに"; romaji = "myogadani"; shozoku = "丸の内線"}
      = "丸の内線、茗荷谷（みょうがだに）"
