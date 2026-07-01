extends CharacterBody2D

@export var speed = 30.0
@export var jump_power = 10.0
@export var push_force = 100.0

var speed_multiplyer = 30.0
var jump_multiplyer = -30.0
var direction = 0


var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = jump_power * jump_multiplyer 

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	direction = Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * speed * speed_multiplyer
	else:
		velocity.x = move_toward(velocity.x, 0, speed * speed_multiplyer)

	move_and_slide()

# Loop through all collisions that occurred during move_and_slide
	for i in get_slide_collision_count():
		var collision = get_slide_collision(i)
		var collider = collision.get_collider()
		
		if collider.visible:
			# Check if the collided object is a RigidBody2D
			if collider is RigidBody2D:
				# Apply an instantaneous kick in the direction opposite to the collision normal
				# Multiplying by player velocity allows a faster player to push harder
				var push_direction = -collision.get_normal()
				collider.apply_central_impulse(push_direction * push_force)
