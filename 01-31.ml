(* Precondition: there is at least one item. *)
let rec is_sorted(xs: int list): bool =
    if List.tl xs = [] then
        true
    else if List.hd xs <= List.hd(List.tl xs) then
        is_sorted(List.tl xs)
    else
        false

let rec remove_evens(xs: int list): int list =
    if xs = [] then
        []
    else if List.hd xs mod 2 = 0 then
        remove_evens(List.tl xs)
    else
        List.hd xs :: remove_evens(List.tl xs)

(* [1; 2; 3] is syntatic sugar for 1::2::3::[] *)
(* 5 is syntactic sugar for 1+ 1+ 1+ 1+ 1 + 0 *)

let pair_list: (int * int) list = [(1, 2); (3, 4); (5, 6)]

let rec pair_list_sum(xs: (int * int) list): int = 
    if xs = [] then
        0
    else
        fst(List.hd xs) + snd(List.hd xs) + pair_list_sum(List.tl xs)

let result = pair_list_sum pair_list

let rec firsts(xs: (int * int) list): int list =
    if xs = [] then
        []
    else
        fst(List.hd xs) :: firsts(List.tl xs)

let result = firsts pair_list

(* Precondition: there is at least one int in xs. *)
let rec max(xs: int list): int =
    if List.tl xs = [] then
        List.hd xs
    else if List.hd xs > List.hd(List.tl xs) then
        max(List.hd xs :: List.tl(List.tl xs))
    else
        max(List.tl xs)

let result = max [1; 2; 3; 42; 5; 65]