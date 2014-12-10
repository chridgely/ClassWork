//I chose this language because this was the other language which
//I was interested beside Swift, my pet. I just thought it was an
//interesting language and wanted to try it out. No other reason

package main

import (
   "math/rand"
   "fmt"
   "time"
)


//Purpose: This is the main executing function
//In: None
//Out: Executes the program
func main() {
   rand.Seed(time.Now().UTC().UnixNano())
   
   for i := 0; i < 3; {
      var randomNumber int
      randomNumber = randInt(1, 6)
      game(randomNumber, 1)
      i++
   }  
}


//Purpose: Generates the random number
//In: minimum and maximum numbers as ints
//Out: returns a random number
func randInt(min int, max int) int {
    return min + rand.Intn(max-min)
}

//Pupose: Executes a single game until number is guessed
//In: randomNumber as an in and the number of guesses as an int
//Out: The number of tries it took to guess the number
func game(randomNumber int, guess int) {
   var guesses int
   var input int
   guesses = guess
   fmt.Println("What is your guess?")
   fmt.Scan(&input)
   
   if input != randomNumber {
      game(randomNumber, guesses+1)
   } else {
      fmt.Printf("It took you %d tries\n", guesses)
   }
}
