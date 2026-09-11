extends Node2D



func _on_hit_box_area_entered(_area: Area2D) -> void:
	Global.plants += 1
	print(Global.plants)
