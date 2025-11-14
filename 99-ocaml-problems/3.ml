(*

N'th Element of a List

# at 2 ["a"; "b"; "c"; "d"; "e"];;
- : string option = Some "c"
# at 2 ["a"];;
- : string option = None

*)


let nth l v =
  let rec find_nth acc = function
    | [] -> None
    | h :: t -> if acc = v then Some h else find_nth (acc+1) t
  in find_nth l

let find_nth l v = nth 0 v l

(* 

  While my solution worked, the actual solution was a slightly cleaner version:

  let rec at k = function
      | [] -> None
      | h :: t -> if k = 0 then Some h else at (k - 1) t

  Using `k` as the 'accumulator' here allows the user to call this function simpler without the extra fluff I
  added to my function;

  at 1 [3; 5; 6]

  VS my function which required a second function to give a `0` value to the acc
  
*)