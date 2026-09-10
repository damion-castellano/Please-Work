extends Node
class_name HealthComponent

signal died
signal health_changed

@export var max_health: float = 10
var current_health

func _ready() -> void:
	current_health = max_health


@warning_ignore("shadowed_variable")
func damage(damage: float):
	current_health = max(current_health- damage, 0)
	health_changed.emit()
	if current_health == 0:
		died.emit()
		owner.queue_free()


func get_health_percent():
	if max_health <= 0:
		return 0
	return min(current_health / max_health, 1)


func on_health_changed():
	pass
