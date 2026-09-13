extends Node

@export var obsticle_scenes: Array[PackedScene]


func _ready() -> void:
	$Timer.timeout.connect(on_timer_timeout)


func on_timer_timeout():
	var obsticle = obsticle_scenes.pick_random().instantiate() as Node2D
	var spawn_position = Vector2(randf_range(125, 475), -80)
	
	get_parent().add_child(obsticle)
	obsticle.global_position = spawn_position
