extends Node2D
@onready var puzzle1 = $puzzleManagerPuzzle1
@onready var character = get_tree().root.get_node("room1").get_node("Character")
@onready var clue = get_tree().root.get_node("room1").get_node("puzzle1clue").get_node("clue")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_texture_button_pressed() -> void:
	#get_tree().change_scene_to_file("res://scenes/puzzle_1.tscn")
	puzzle1.visible = true
	clue.visible = false
	character.is_frozen = true
	


func _on_next_level_body_entered(body: Node2D) -> void:
	if (body.name == "Character"):
		get_tree().change_scene_to_file("res://scenes/you_win.tscn")
