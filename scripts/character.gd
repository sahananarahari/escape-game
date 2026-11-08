extends CharacterBody2D

@onready var sprite = $Sprite2D
@export var speed = 400
# Called when the node enters the scene tree for the first time.
func get_input() -> void:
	var inputDirection = Input.get_vector("left", "right", "up", "down")
	velocity = inputDirection * speed
	#this wont do anything rn but when i add a real character itll be useful sooo
	if (inputDirection.x > 0):
		sprite.flip_h = false
	elif (inputDirection.x < 0):
		sprite.flip_h = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	get_input()
	move_and_slide()
