let leap_year (x: int): bool = if x mod 100 == 0 then x mod 400 == 0
  else x mod 4 == 0

