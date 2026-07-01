extends Area2D

@export var speed = 250
var screen_size
var JUMP_VELOCITY = -300.0


func _ready():
	screen_size = get_viewport_rect().size



func _process(delta):
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("right"):
		velocity.x += 1
	if Input.is_action_pressed("left"):
		velocity.x -= 1
	if Input.is_action_pressed("dash"):
		velocity.x += 2
	if Input.is_action_pressed("jump"):
		velocity.y = JUMP_VELOCITY 

	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		$AnimatedSprite2D.play()
	else:
		$AnimatedSprite2D.stop()
	position += velocity * delta
	position = position.clamp(Vector2.ZERO, screen_size)
