(* Let a boolean variable be true, false, or unknown. *)
type boolval = 
    | Known of bool
    | Unknown

(**************************)
(* Functions for testing. *)
(**************************)
(* Given a list of expr lists, build a new list consisting of each of the current lists,
each with Known true, Known false, and Unknown cons'd on. *)
let rec add_to_each(xs) =
    match xs with
    | [] -> []
    | x::xs' -> (Known true::x) :: (Known false:: x) :: (Unknown::x) :: add_to_each xs'

(* Generate all lists of length n. *)
(* int -> (expr list) list *)
let rec generate n =
    match n with
    | 0 -> [[]]
    | _ -> add_to_each(generate(n-1))
