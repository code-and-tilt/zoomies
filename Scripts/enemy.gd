class_name Enemy
extends CharacterBody2D

@onready var animated_sprite_2d = $AnimatedSprite2D
@onready var collision_shape_2d = $CollisionShape2D
@onready var SPEED : float = 70
@onready var target : Node = null


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _physics_process(delta):
	velocity = Vector2.ZERO
	velocity = position.direction_to(target.position) * SPEED
	move_and_slide()
	

func _on_area_2d_body_entered(body):
	target = body # Replace with function body.
