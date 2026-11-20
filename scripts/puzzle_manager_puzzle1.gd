extends Node2D

@onready var door = get_tree().root.get_node("room1").get_node("door")
@onready var character = get_tree().root.get_node("room1").get_node("Character")
@onready var tryagain = $tryagain
@onready var light1 = $button1Press
@onready var light2 = $button2Press
@onready var light3 = $button3Press
@onready var light4 = $button4Press

const CORRECT_PUZZLE: Array[int] = [1, 3, 4, 2]
var user_puzzle: Array[int] = []


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if (Input.is_action_pressed("exit")):
		visible = false
		character.is_frozen = false
		user_puzzle.clear()


func _on_button_pressed(extra_arg_0: int) -> void:
	tryagain.visible = false
	user_puzzle.append(extra_arg_0)
	if (user_puzzle.size() == 1):
		light1.visible = true
	elif (user_puzzle.size() == 2):
		light2.visible = true
	elif (user_puzzle.size() == 3):
		light3.visible = true
	elif (user_puzzle.size() == 4):
		light4.visible = true
		
	
	if (user_puzzle.size() == CORRECT_PUZZLE.size()):
		check_puzzle()

func check_puzzle() -> void:
	if (user_puzzle == CORRECT_PUZZLE):
		#get_tree().change_scene_to_file("res://scenes/room_1_dooropen.tscn")
		door.queue_free()
		visible = false
		character.is_frozen = false
	else:
		user_puzzle.clear()
		tryagain.visible = true
		light1.visible = false
		light2.visible = false
		light3.visible = false
		light4.visible = false
