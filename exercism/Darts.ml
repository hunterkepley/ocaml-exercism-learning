let get_combined_distance (x: float) (y: float): float = (x *. x) +. (y *. y)

let is_in_radius (combined_distance: float) (r: float): bool =
  if combined_distance <= (r *. r) then 
    true
  else
    false

let radii = [1; 5; 10]

let score_match (r: int): int = match r with
  | 1 -> 10
  | 5 -> 5
  | 10 -> 1
  | _ -> 0

let rec check_all_circles (x: float) (y: float) (lst: int list): int = 
  match lst with
  | [] -> 0
  | r :: rs -> if is_in_radius (get_combined_distance x y) (float_of_int r) then score_match r
    else check_all_circles x y rs

let score (x: float) (y: float): int = check_all_circles (Float.abs x) (Float.abs y) radii
