extends Node

@export var obsticle_scene: PackedScene


func _ready() -> void:
	$Timer.timeout.connect(on_timer_timeout)


func on_timer_timeout():
	var obsticle = obsticle_scene.instantiate() as Node2D
	var spawn_position = Vector2(randf_range(125, 475), -200)
	
	get_parent().add_child(obsticle)
	obsticle.global_position = spawn_position
