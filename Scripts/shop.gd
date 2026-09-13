extends Node

func _ready():
	set_process(true)

func _process(_delta):
	%Currency.text = str("You have %s plants!" % Global.plants)




func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/main.tscn")


func _on_shovel_size_pressed() -> void:
	if Global.plants >= 5:
		Global.shovel_scale *= 1.2
		Global.plants -= 5
		print("working")
	else:
		print("You Broke")
