extends Node2D
@onready var clue = $clue
@onready var character = get_tree().root.get_node("room1").get_node("Character")
@onready var puzzle = get_tree().root.get_node("room1").get_node("puzzle1transport").get_node("puzzleManagerPuzzle1")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if (Input.is_action_pressed("exit")):
		clue.visible = false
		character.is_frozen = false


func _on_clue_button_pressed() -> void:
	clue.visible = true # Replace with function body.
	puzzle.visible = false
	character.is_frozen = true
