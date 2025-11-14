(*

Length of a List

# length ["a"; "b"; "c"];;
- : int = 3
# length [];;
- : int = 0

*)

let rec length = function
  | [] -> 0
  | _ :: t -> 1 + length t


(* 

The better solution would be to use tail recursion to save on stack:

*)

let rec length l =
  let rec len_aux aux = function
    | [] -> aux
    | _ :: t -> len_aux (aux + 1) t
  in len_aux 0 l