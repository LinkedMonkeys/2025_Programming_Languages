type expr =
    | Constant of int
    | Negate of expr
    | Add of expr * expr
    | Mult of expr * expr

type my_int_list = 
    | Empty
    | Cons of int * my_int_list

let my_list = Cons(1, Cons(2, Cons(3, Cons(4, Empty))))

let rec list_sum xs =
    match xs with
    | Empty -> 0
    | Cons(x, xs') -> x + list_sum xs'

let rec append(xs, ys) =
    match xs with
    | Empty -> ys
    | Cons(x, xs') -> Cons(x, append(xs', ys))

let l = append(my_list, my_list)

let rec list_sum(xs: int list): int =
    match xs with
    | [] -> 0
    | x::xs' -> x + list_sum xs'

let rec append(xs, ys) =
    match xs with
    | [] -> ys
    | x::xs' -> x :: append(xs', ys)