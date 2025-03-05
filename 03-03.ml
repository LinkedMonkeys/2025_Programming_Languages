let rec double_n_times(n, x) = 
    if n=0 then
        x
    else
        double_n_times(n-1, x*2)

let rec double_n_times(n, x) =
    let double a = a*2
    in
    if n=0 then
        x
    else
        double_n_times(n-1, double x)

let two_to_the_tenth = double_n_times(10, 1)

let rec increment_n_times(n, x) =
    if n=0 then
        x
    else
        increment_n_times(n-1, x+1)

let rec increment_n_times(n, x) =
    let increment a = a+1
    in
    if n=0 then
        x
    else
        increment_n_times(n-1, increment x)

let ten = increment_n_times(4, 6)

let rec tail_n_times(n, x) =
    if n=0 then
        x
    else
        tail_n_times(n-1, List.tl x)

let shorter_list = tail_n_times(4, [1;2;3;4;5;6;7;8;9])

let rec n_times(n, x, f) =
    if n=0 then
        x
    else
        n_times(n-1, f x, f)

let double a = 2*a

let increment a = a + 1

let two_to_the_tenth = n_times(10, 1, double)
let ten = n_times(6, 4, increment)

let funcs = [double; increment]

let list = [1;2;3;4;5]

let rec apply(f, xs) =
    match xs with
    | [] -> []
    | x::xs' -> (f x)::apply(f, xs')


let new_list = apply(increment, list) (* [2;3;4;5;6] *)
let new_list2 = apply(double, list) (* [2; 4; 6; 8; 10] *)

let rec filter(f, xs) =
    match xs with
    | [] -> []
    | x::xs' -> 
        if f x then
            x::filter(f, xs')
        else 
            filter(f, xs')


let even n = n mod 2 = 0
let new_list3 = filter(even, list)