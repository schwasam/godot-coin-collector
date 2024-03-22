extends CharacterBody2D

const MOVEMENT_SPEED = 300

func _physics_process(_delta: float) -> void:
	velocity.x = 0
	velocity.y = 0

	if Input.is_key_pressed(KEY_LEFT):
		velocity.x -= 1

	if Input.is_key_pressed(KEY_RIGHT):
		velocity.x += 1

	if Input.is_key_pressed(KEY_UP):
		velocity.y -= 1

	if Input.is_key_pressed(KEY_DOWN):
		velocity.y += 1

	velocity *= MOVEMENT_SPEED

	move_and_slide()