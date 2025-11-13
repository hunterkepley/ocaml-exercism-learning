let stmnt n =
  "One for " ^ n ^ ", one for me."

let two_fer n = match n with
  | None -> stmnt "you"
  | Some s -> stmnt s

