(*This is my Code -Ridgely*)

(*
Purpose: Calculates F(x) if F(x) = the second to last number plus
         the last number
Inputs:  a number 'x' for which to solve
Result:  The solution of F(x)
*)
fun fibo_helper n =
   if n < 3 then     1
   else              fibo_helper (n-1) + fibo_helper (n-2);   
                                    (*Thank god the algo for Fibo is easy*)


fun inc_count num = num+1;
val c = 0;  (*I couldn't figure this out. Trying to print 10 from
              where it started. Thought you might want to see.*)

(*
Purpose: Prints out each value of F(x) until n=10
Inputs:  A number at which to start the sequeance
Result: The Fibo Sequence until n = 10
*)
fun fibo n =
  if n > 10 then print "\n"
  else (
    print (Int.toString (fibo_helper n) ^ " ");
    fibo (n+1)
  );

fibo 1;



(*
TESTS:
   fibo 9 = 34 55
   fibo 8 = 21 34 55
   fibo 1 = 1 1 2 3 5 8 13 21 34 55
   fibo x = stdin error
*)
