# Game of Sticks

The game begins when a player randomly selects a number of sticks between 10 and 100. After the inital number has been set, players alternate turns until one draws the final sticks. The player who empties the pile loses.

Game Start:
- In this method, the users are provided with a prompt for an initial number. Upon receiving that number, the game then sets the "pile of sticks" to equal that number.
- The initial number MUST be a numeric value between 10 and 100. If the user enters an invalid value outside those bounds, the game start method will loop until a valid input is received.

Take Sticks:
-This method is reusable for both players' turns. First, the method displays the current number of sticks. 
-Next, the player is prompted to select between 1 and 3 sticks to subtract from the current pile. If the player enters an invalid input, the asking sequence will loop until a valid input is received.

Main: 
-The Game Start and Take Sticks methods are called by the main method. After the game start method has initialized and established the first pile value, it ends.
-The Take Sticks method will loop until the number of sticks is no longer greater than zero. 

Class:
-A single instance variable, @stick_number, is used to keep track of the total number of sticks in "the pile" as established by the Game Start method, and as it is modified by the Take Sticks method.
