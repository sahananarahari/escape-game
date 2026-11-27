extends Node2D

#@onready var lev1 = $level_1/level_1_complete
#@onready var lev2 = $level_2

# creates an array of booleans that will display whether or not a level is completed
var levels_complete: Array[bool] = [Level1.complete, Level2.complete]
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# loops through each level in array
	for i in range(1, levels_complete.size() + 1, 1):
		# checks if level is complete
		if (levels_complete.get(i - 1) == true):
			# creates variables for the sprite of current level being complete and next level being open
			var lev = get_node("level_" + str(i) + "/level_" + str(i) + "_complete")
			var next = get_node("level_" + str(i + 1))
			
			# sets two sprites visible
			lev.visible = true
			next.visible = true
		else:
			# once one level isn't complete exits the loop because the rest shouldn't be unlocked
			break
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_level_button_pressed(room: int) -> void:
	# changes scene to scene with matching name based on letter provided in parameter
	get_tree().change_scene_to_file("res://scenes/room_" + str(room) + ".tscn") # Replace with function body.
