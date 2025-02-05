let slope((p1: float * float), (p2: float * float)): float = 
    (snd p2 -. snd p1) /. (fst p2 -. fst p1)
let my_slope: float = slope((1.0, 6.0), (3.0, 9.0))
let my_slope2: float = slope((1.0, 6.0), (1.0, 9.0))

let slope((p1: float * float), (p2: float * float)): float option = 
    if fst p2 -. fst p1 = 0.0 then (* the denominator is zero *)
        None
    else
        Some((snd p2 -. snd p1) /. (fst p2 -. fst p1))

let my_slope: float option = slope((1.0, 6.0), (3.0, 9.0))
let my_slope2: float option = slope((1.0, 6.0), (1.0, 9.0))

(* No precondition *)
let rec max(xs: int list): int option =
    if xs = [] then
        None
    else if List.tl xs = [] then
        Some(List.hd xs)
    else
        let max_so_far = max(List.tl xs) in
            if List.hd xs > Option.get max_so_far then
                Some(List.hd xs)
            else
                max_so_far

let my_max = max [1; 42; 19; 5; 99; 8; 12]
