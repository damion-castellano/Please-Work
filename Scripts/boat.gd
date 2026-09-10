extends CharacterBody2D

const SPEED = 100
@onready var frame = $AnimatedSprite2D
@onready var health_component: HealthComponent = $HealthComponent


func _ready() -> void:
	$HitBox.area_entered.connect(on_collision)



func _physics_process(delta):
	if Input.is_action_pressed("go_right"):
		position.x += SPEED * delta
		move_and_slide()
		frame.play("right")
	elif Input.is_action_pressed("go_left"):
		position.x -= SPEED * delta
		move_and_slide()
		frame.play("left")
	else:
		frame.play("default")


func on_collision(_area: Node2D):
	health_component.damage(1)
	var current_health = health_component.current_health
	print(current_health)
