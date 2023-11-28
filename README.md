# ruby_math_game

## Description
A simple two-player math game built with Ruby where players take turns to answer simple math addition problems. This is an OOP-based command-line application with Ruby in order to practice and demonstrate fundamental OOP. This project was made as part of the Lighthouse Labs Web Development Flex Bootcamp. 

## How to Play
1. Clone this repo to your local machine.
2. Navigate to the root directory of this repo in your terminal.
3. Run `ruby main.rb` to start the game.
4. Follow the on-screen instructions to play the game.

## Plan

### Instructions
Create a 2-Player math game where players take turns to answer simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or lose a life.

### User Stories
- As a player, I want to be able to answer simple math addition problems.
- As a player, I want to be able to see my score.
- As a player, I want to be able to see my lives.
- As a player, I want to be able to see when it is a new turn
- As a player, I want to be able to be prompted to play by seeing the question for my turn
- As a player, I want to be able to see the game is over
- As a player, I want to be able to see who won the game and the final score

### Nouns and their roles

Player: Keeps track of player's name, lives, and score via state and behavior (instance variables and methods). It will handle user input and update the game state accordingly. It needs to be initialized with the players name and starting lives (3). 

Question: Generates a new question and checks the answer. It has two instance variables: num1 and num2, and one method: generate_question, and is primarily responsible for generating the random math problems. 

Game: Keeps track of the current player, the game status, and the game score. Will contain the main game loop, manage the current player and toggle between them, and handle user I/O within the overall game logic. 


### Flowchart

ruby_math_game
|-- main.rb
|-- classes
|   |-- game.rb
|   |-- player.rb
|   |-- question.rb

