class_name Level2
extends Node2D

static var complete: bool = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	complete = true
	get_tree().change_scene_to_file("res://scenes/you_win.tscn")
