let rec flatten xs =
    match xs with
    | [] -> []
    | x::xs' -> x @ flatten xs'

let flatten xs =
    let rec flatten'(xs, acc) =
        match xs with
        | [] -> acc
        | x::xs' -> flatten'(xs', acc @ x)
    in flatten'(xs, [])

(* Precondition: there is at least one int in xs. *)
let rec max xs =
    match xs with
    | x::[] -> x
    | x::xs' ->
        let max_ahead = max xs' in
        if x > max_ahead then
            x
        else
            max_ahead

(* Precondition: there is at least one int in xs. *)
let max xs =
    let max'(xs, acc) =
        match xs with
        | [] -> acc
        | x::xs' -> 
            if acc < x then
                max'(xs', x)
            else
                max'(xs', acc)
    in max'(List.tl xs, List.hd xs)

(* Precondition: there is at least one int in xs. *)
let max xs =
    let max'(xs, acc) =
        match xs with
        | [] -> acc
        | x::xs' -> max'(xs', if acc < x then x else acc)
    in max'(List.tl xs, List.hd xs)