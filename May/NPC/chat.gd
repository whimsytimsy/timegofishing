extends Area2D

@export var interaction_name: String = ""
@export var is_interactble: bool = true

var interact: Callable = func():
	pass 


@onready var interact_label: Label
