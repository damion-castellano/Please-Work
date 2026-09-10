extends Node

@export var shovel: PackedScene

@warning_ignore("unused_parameter")
func _physics_process(delta: float) -> void:
	var boat = get_tree().get_first_node_in_group("player")
	var shovel_instance = shovel.instantiate() as Node2D
	if boat == null:
		print("null")
		return
	if Input.is_action_just_pressed("use_shovel"):
		boat.get_parent().add_child(shovel_instance)
		shovel_instance.global_position = boat.global_position
		print("Shovel")
