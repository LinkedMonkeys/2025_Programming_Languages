let add(a, b) = a+b
let five = add(3, 2)
let increment x = add(1, x)
let five = increment 4

let add = (fun a -> (fun b -> (a+b)))
let five = add 3 2

let increment x = add 1 x
let five = increment 4

let increment = add 1
let five = increment 4

let my_list = [0;1;2;3;4;5;6;7;8;9]
let my_evens = List.filter (fun x -> x mod 2 = 0) my_list

let get_evens xs = List.filter (fun x -> x mod 2 = 0) xs
let my_evens = get_evens my_list

let get_evens = List.filter (fun x -> x mod 2 = 0)
let my_evens = get_evens my_list

(* Take a list of strings and add an exclamation mark to the end of each. *)
let string_list = ["Hello"; "world"; "from"; "OBU"]

let exclamation = List.map (fun s -> s ^ "!")
let string_excl_list = exclamation string_list

(* Given a list of integers, return a list that contains the square root of each value. *)
let sqrts = List.map (fun i -> sqrt (float_of_int i))
let sqrt_list = sqrts my_list