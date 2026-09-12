extends CanvasLayer

@export var play_time_manager: Node

@onready var label = %Label


func _process(_delta: float) -> void:
	if play_time_manager == null:
		return
	var time_elapsed = play_time_manager.get_time_elapsed()
	label.text = "Time Left: " + format_seconds_to_string(time_elapsed)


func format_seconds_to_string(seconds: float):
	var minutes = int(floor(seconds / 60))
	var remaining_seconds = seconds - (minutes * 60)
	return ("%02d" % floor(remaining_seconds))
