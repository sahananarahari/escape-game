# escape-game
repository for a simple escape game in godot

## project goal
create a fun escape room game for my friends to play

## mvp scope
- [x] game has a room
- [x] game has a movable character
- [x] game has at least one solvable puzzle
- [x] game has a way to win/exit room

## how it works
This program should take the input from a users keyboard and process it to either cause the character to move or solve a puzzle. The user can interact with a puzzle and the program will determine if it is solved. If solved, the user will be taken to a new scene, telling them that they won. If not, the user will be prompted to try again, and the program will continue to read their input.

![System Diagram](Flowchart.pdf)

## future plans
- [x] level selector/manager
- [ ] menu accessible from in game
- [ ] main menu
- [ ] multiple puzzles per room
- [ ] multiple levels
- [ ] inventory
- [ ] visual effects to indicate completed puzzles

## tech stack
- writing in gdscript (or java if end up doing terminal)
- using godot to create visuals of game
- use github to organize work and save game at stages when it is working so I can revert back to it if needed
- use git/terminal to connect project to github and commit, etc.

## how to run
- make sure you have godot version 4.7.2.0 installed
- clone repo using git@github.com:sahananarahari/escape-game.git
- open godot and click import
- find the folder you just cloned (if needed copy it into a location you can access) and open the project.godot file

## example output
- you will start as a fox in a room
- there will be a cream-colored square on a desk. If you click the square, a piece of papers with the numbers "4653" will appear. click escape to exit.
- there will be a gray box with buttons on the left side of the screen. If you click it, a panel with instructions and buttons will appear.
- as you press buttons, lights will appear and reset once you press 4 buttons.
- press the buttons in the order: blue, purple, green, red
- puzzle will disappear and door will have disappeared
- exit the room through where the door was and you will be transported to a win screen.
- if you press the buttons in any different order, the puzzle will prompt you to try again and all the lights will disappear

## demo
[youtube video](https://www.youtube.com/watch?v=YRIoWAia7Fo)
