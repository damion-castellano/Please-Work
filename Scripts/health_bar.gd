extends ProgressBar

class_name health_bar_component
 
@export var health_component :HealthComponent
 
 
func _ready() -> void:
	assert(health_component != null)
	
	health_component.health_changed.connect(on_health_changed)
	update_health_display()
 
 
func on_health_changed() -> void:
	update_health_display()
 
 
func update_health_display() -> void:
	value = health_component.get_health_percent()
