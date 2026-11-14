extends Node2D

@onready var door = get_tree().root.get_node("room1").get_node("door")
@onready var tryagain = $tryagain
const CORRECT_PUZZLE: Array[int] = [1, 2, 3, 4]
var user_puzzle: Array[int] = []


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if (Input.is_action_pressed("exit")):
		visible = false
		user_puzzle.clear()


func _on_button_pressed(extra_arg_0: int) -> void:
	tryagain.visible = false
	user_puzzle.append(extra_arg_0)
	if (user_puzzle.size() == CORRECT_PUZZLE.size()):
		check_puzzle()

func check_puzzle() -> void:
	if (user_puzzle == CORRECT_PUZZLE):
		#get_tree().change_scene_to_file("res://scenes/room_1_dooropen.tscn")
		door.queue_free()
		visible = false
	else:
		user_puzzle.clear()
		tryagain.visible = true
