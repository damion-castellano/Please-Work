extends Sprite2D

func _process(delta: float) -> void:
	position.y += 100 * delta



func _on_area_2d_area_entered(_area: Area2D) -> void:
	queue_free()
	print(Global.plants)
