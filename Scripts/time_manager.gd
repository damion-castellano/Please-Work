extends Node

@export var shop_screen_scene: PackedScene

@onready var timer = $Timer


func _ready() -> void:
	timer.timeout.connect(on_timer_timeout)


func get_time_elapsed():
	return timer.time_left


func on_timer_timeout():
	get_tree().change_scene_to_packed(shop_screen_scene)
