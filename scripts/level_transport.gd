extends Node2D

@onready var lev1 = $level_1/level_1_complete
@onready var lev2 = $level_2
var levels_complete: Array[bool] = [Level1.complete, Level2.complete]
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for i in range(1, levels_complete.size() + 1, 1):
		if (levels_complete.get(i - 1) == true):
			var lev = get_node("level_" + str(i) + "/level_" + str(i) + "_complete")
			var next = get_node("level_" + str(i + 1))
			
			lev.visible = true
			next.visible = true
		else:
			break
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_level_button_pressed(room: int) -> void:
	get_tree().change_scene_to_file("res://scenes/room_" + str(room) + ".tscn") # Replace with function body.
