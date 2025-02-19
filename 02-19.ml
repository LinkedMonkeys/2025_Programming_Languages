type boolval =
    | Known of bool
    | Unknown

let rec eval_and xs =
    match xs with
(*
    | [] -> Unknown (* This shouldn't happen. *)
    | _::[] -> Unknown (* This shouldn't happen. *)
*)
    | Known false::_ -> Known false
    | _::Known false::[] -> Known false
    | Known true::Known true::[] -> Known true
    | _::_::[] -> Unknown
    | Unknown::xs' -> if eval_and xs' = Known false then Known false else Unknown
    | Known true::xs' -> eval_and xs'
    
let result = eval_and [Unknown; Known true; Known true; Known false]

let sum_triple(triple) = 
    match triple with
    | (a, b, c) -> a + b + c

let my_sum = sum_triple (1, 2, 3)

let sum_triple(triple) =
    let (a, b, c) = triple in a + b + c

let my_sum = sum_triple (1, 2, 3)

let sum_triple(a, b, c) =
    a + b + c

let my_sum = sum_triple(1, 2, 3)