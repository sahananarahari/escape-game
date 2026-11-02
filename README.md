# escape-game
repository for a simple escape game in godot

## project goal
create a fun escape room game for my friends to play

## mvp scope
- game has a room
- game has a movable character
- game has at least one solvable puzzle
- game has a way to win/exit room

## how it works
This program should take the input from a users keyboard and process it to either cause the character to move or solve a puzzle. The user can interact with a puzzle and the program will determine if it is solved. If solved, the user will be taken to a new scene, telling them that they won. If not, the user will be prompted to try again, and the program will continue to read their input.

![System Diagram](Flowchart.pdf)

## future plans
- level selector/manager
- multiple puzzles per room
- multiple levels
- inventory
- visual effects to indicate completed puzzles

## tech stack
- writing in gdscript (or java if end up doing terminal)
- using godot to create visuals of game
- use github to organize work and save game at stages when it is working so I can revert back to it if needed
- use git/terminal to connect project to github and commit, etc.
