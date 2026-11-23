extends CharacterBody2D

@onready var character = $Sprite2D
@export var speed = 400
var is_frozen: bool = false
# Called when the node enters the scene tree for the first time.
func get_input() -> void:
	# doesn't accept input direction and leave method if frozen
	if is_frozen:
		return
		
	var inputDirection = Input.get_vector("left", "right", "up", "down")
	velocity = inputDirection * speed
	#this wont do anything rn but if i add a real character itll be useful
	# basically flips the direction that the character is looking but I may not get around to making this useful
	if (inputDirection.x > 0):
		character.flip_h = false
	elif (inputDirection.x < 0):
		character.flip_h = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# every frame checks input and updates velocity
	get_input()
	# moves character based on velocity
	move_and_slide()
