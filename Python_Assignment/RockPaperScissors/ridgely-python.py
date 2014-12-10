#I chose this language because I have always wanted to learn python
#as well as the extra motivation from that guy that solves DNA.
#I mean, who doesn't want to learn a language named after monty python?


__author__ = 'Chris'
import random

Rock = 1
Paper = 2
Scissors = 3
Quit = 4
outcomes = ['it was a tie', 'you lost', 'you won']

# This is the game of rock paper scissors as implemented in Python

#Purpose: The checks to see if a number is odd
#In: a number
#Out: a boolean true or false
def is_odd(num):
    "Checking to see if the number is odd"
    if (num % 2) == 0:
        return False
    else:
        return True

#Purpose: This prompt the user for the number of games to play, must be odd number
#In: Asks user to input a number
#Out: returns the number if valid, if not, prompts user again
def get_valid_number():
    "Receiving a valid input from user"
    num = input("How many games would you like to play(Must be odd)\n")
    if is_odd(num):
        print('Valid response\n')
    else:
        print('Invalid response\n')
        get_valid_number()
    return num

#Purpose: Randomly generates the computer's RPS hand
#In: No input. Random number is created within method
#Out: What hand the cpu threw, rock paper or scissors
def get_cpu_hand():
    "Is the computer throwing rock paper or scissors"
    rand = random.random()
    if rand < .3:
        hand = Rock
    elif rand < .6:
        hand = Paper
    else:
        hand = Scissors
    return hand

#Purpose: Prompts the user for his decision, rock paper scissors or quit
#In: the string rock paper scissors or quit
#Out: returns what hand the user selected
#Notes: Realistically this could also be implemented in a switch statement
def get_user_hand():
    usr = raw_input("What do you throw? (rock, paper, scissors or quit)\n")
    if usr == 'rock':
        hand = 1
    elif usr == 'paper':
        hand = 2
    elif usr == 'scissors':
        hand = 3
    else:
        hand = 4
    return hand

#Purpose: Organizes data into human readable format
#In: The user's hand, cpu's hand, the outcome and the score
#Out: a strings which combines all the data
def to_string(usr_hand, cpu_hand, outcome, score):
    return "You threw %s and and the computer threw %s so %s ---- %d vs %d" % (usr_hand, cpu_hand, outcome, score[0], score[1])

#Purpose: These are the rules of RPS, what hands trump what
#In: the user's hand, the cpu's hand and the current score
#Out: prints the outcome and returns the score
def rules_of_hands(usr, cpu, score):

    if(usr == Quit):
        print "Well, guess you're a quitter then"
        raise SystemExit
    elif usr == Rock:
        if cpu == Rock:
            print to_string("rock", "rock", outcomes[0], score)  #Tie
            return score
        elif cpu == Paper:
            score[1] += 1  #Add to CPU Score
            print to_string("rock", "paper", outcomes[1], score)  #Lose
            return score
        else:
            score[0] += 1  #Add to USR Score
            print to_string("rock", "scissors", outcomes[2], score)  #Win
            return score

    elif usr == Paper:
        if cpu == Rock:
            score[0] += 1  #ADD to USR Score
            print to_string("paper", "rock", outcomes[2], score)  #Win
            return score
        elif cpu == Paper:
            print to_string("paper", "paper", outcomes[0], score)  #Tie
            return score
        else:
            score[1] += 1  #Add to CPU Score
            print to_string("paper", "scissors", outcomes[1], score)  #Lose
            return score

    else:
        if cpu == Rock:
            score[1] += 1  #Add to CPU Score
            print to_string("scissors", "rock", outcomes[1], score)  #Lose
            return score
        elif cpu == Paper:
            score[0] += 1  #Add to USR Score
            print to_string("scissors", "paper", outcomes[2], score)  #Win
            return score
        else:
            print to_string("scissors", "scissors", outcomes[0], score)  #Tie
            return score
    return;

#Purpose: This is just one game of RPS. Mainly created for readability
#In: The score
#Out: The score
def one_game(score):
    score = rules_of_hands(get_user_hand(), get_cpu_hand(), score)
    return score

#Purpose: This is the main method to be executed
#In: method requested inputs
#Out: method outputs
def main():
    score = [0, 0]
    games = get_valid_number()
    for x in range(0, games):
        score = one_game(score)
    if score[0] > score[1]:
        print("Hey, you won!!!")
    else:
        print("Hey, there's always next time")
    if input("Would you like to play again? (1 for yes, 0 for no)\n") == 1:
        main()
    return


if __name__ == '__main__':
    main()
