extends Node2D

var shovel_size

func _on_hit_box_area_entered(_area: Area2D) -> void:
	Global.plants += 1
	print(Global.plants)
	print(shovel_size)


func _ready() -> void:
	shovel_size = Global.shovel_scale
	scale = Vector2(shovel_size, shovel_size)
