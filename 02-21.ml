let rec is_member(xs, key) =
    match xs with
    | [] -> false
    | x::xs' -> if x=key then true else is_member(xs', key)

(*
let rec is_member(xs, key) =
    match xs with
    | [] -> false
    | key::_ -> true
    | x::xs' -> is_member(xs', key)
*)

let rec is_member(xs, key) =
    match xs with
    | [] -> false
    | li::_ when li=key -> true
    | x::xs' -> is_member(xs', key)

(*
zip ([1; 2; 3], [4; 5; 6]) -> [(1, 4); (2, 5); (3, 6)]
*)


(* let rec zip pr = *)

(*
let rec zip(xs, ys) =
    match xs with
    | [] -> []
    | x::xs' -> 
*)

let rec zip pr = 
    match pr with
    | ([], _) -> []
    | (_, []) -> []
    | (x::xs', y::ys') -> (x, y)::zip(xs', ys')

let result = zip ([1; 2; 3], [4; 5; 6])
(* -> [(1, 4); (2, 5); (3, 6)] *)

let rec unzip xs =
    match xs with
    | [] -> ([], [])
    | x::xs' -> let temp = unzip xs' in
        fst x::fst temp, snd x::snd temp


    (* fst x::fst(unzip xs')  snd x::snd(unzip xs') *)

unzip [(1, 4); (2, 5); (3, 6)] 
(* -> ([1; 2; 3], [4; 5; 6]) *)