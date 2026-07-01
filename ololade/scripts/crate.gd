extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	visible = false
	set_collision_layer_value(2, false)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("camera_1"):
		visible = !visible
		set_collision_layer_value(2, visible)
