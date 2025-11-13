let rec summate (l: int list): int = match l with
  | [] -> 0
  | x :: xs -> x + (summate xs)

let square (x: int): int = x * x

let square_list (l: int list): int list = List.map (fun x -> square x) l

let create_series (s: int): int list = Seq.ints 1 |> Seq.take s |> List.of_seq

let square_of_sum (s: int): int = square (summate (create_series s))

let sum_of_squares (s: int): int = summate (square_list (create_series s))

let difference_of_squares (s: int): int = square_of_sum s - sum_of_squares s
