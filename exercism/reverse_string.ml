let string_to_list (s: string): char list = List.init (String.length s) (String.get s)

let rec reverse_string (s: string): string = 
  let len = String.length s in
  String.init len (fun n -> String.get s ((len) - n - 1))

