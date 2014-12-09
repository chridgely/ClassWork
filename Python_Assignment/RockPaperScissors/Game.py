__author__ = 'Chris'
import random

Rock = 1
Paper = 2
Scissors = 3
Quit = 4
outcomes = ['it was a tie', 'you lost', 'you won']

# This is the game of rock paper scissors as implemented in Python


def is_odd(num):
    "Checking to see if the number is odd"
    if (num % 2) == 0:
        return False
    else:
        return True


def get_valid_number():
    "Receiving a valid input from user"
    num = input("How many games would you like to play(Must be odd)\n")
    if is_odd(num):
        print('Valid response\n')
    else:
        print('Invalid response\n')
        get_valid_number()
    return num


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


def to_string(usr_hand, cpu_hand, outcome, score):
    return "You threw %s and and the computer threw %s so %s ---- %d vs %d" % (usr_hand, cpu_hand, outcome, score[0], score[1])


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


def one_game(score):
    score = rules_of_hands(get_user_hand(), get_cpu_hand(), score)
    return score


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