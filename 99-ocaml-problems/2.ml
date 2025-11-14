(*

Last Two Elements of a List

# last_two ["a"; "b"; "c"; "d"];;
- : (string * string) option = Some ("c", "d")
# last_two ["a"];;
- : (string * string) option = None

*)

let rec last_two  = function
  | [] | [_] -> []
  | [t1; t2] -> [t1; t2]
  | h :: t -> last_two t



  (* Solution says to use 'Some' and 'None' - the solution I made above works but does not use optionals 
     I need to start paying attention to the types it defines
  *)
