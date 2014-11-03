(*This is my code but highly inspired by Dr. Binkley's scm solution*)
(*Currently not functioning*)

(*Purpose: This will apply the proper operator to the numbers*)
(*Inputs:  A number 'a', 'b' and a character to be the operator*)
(*Result   The answer to the equation*)
fun apply_operation #"-" a b = a-b
   |apply_operation #"+" a b = a+b
   |apply_operation #"/" a b = a/b
   |apply_operation #"*" a b = a*b
   ;

(*Purpose: This is how the expression is evaluated*)
(*Inputs:  The postfix equation*)
(*Result:  It should return the answer of the full expression*)
fun eval_helper null stack = stack
   |eval_helper exp stack =
       if (Char.isDigit(hd exp)) then eval_helper (tl exp) (hd exp::stack)
       else eval_helper (tl exp) ((apply_operation(hd exp) (Real.fromInt(Char.ord(hd stack)-48)) 
                   (Real.fromInt(Char.ord(hd(tl stack)))))::(tl(tl stack)))
                   (* ^--  I couldn't figure out how to make this a real list instead of a char list, will update and annotate changes*)

   ;
     
(*Purpose: This is where the expression is input*)
(*Inputs:  The full postfix expression*)
(*Result:  The answer to the evalutated expression*)
fun eval_expression exp = eval_helper exp [] ;





(*
Test Cases:
   This is where the test cases would be if my code worked. But it doesn't...
   This is just to show you that I thought about the test cases
*)
