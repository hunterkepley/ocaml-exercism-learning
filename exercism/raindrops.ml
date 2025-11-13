module ResultMap = Map.Make(Int)

let result_dict = ResultMap.(empty
  |> ResultMap.add 3 "Pling"
  |> ResultMap.add 5 "Plang"
  |> ResultMap.add 7 "Plong")

let find_value v = match ResultMap.find_opt v result_dict with
  | None -> ""
  | Some r -> r

let rec construct_str s n = function
  | [] -> s
  | x :: xs -> if n mod x == 0 then construct_str (s ^ (find_value x)) n xs else construct_str s n xs

let raindrop (n: int): string = 
  let v = construct_str "" n [3; 5; 7] in
  if v = "" then string_of_int n else v
