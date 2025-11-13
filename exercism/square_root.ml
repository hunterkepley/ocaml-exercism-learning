let gen_list l = 
  List.init l (fun x -> x + 1)

let equals_square x n =
  x * x == n

let rec filter_square_root n = function
  | [] -> n
  | x :: xs -> if equals_square x n then x else filter_square_root n xs

let square_root x = filter_square_root x (gen_list x)
