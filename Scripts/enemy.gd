class_name Enemy
extends CharacterBody2D

@onready var animated_sprite_2d = $AnimatedSprite2D
@onready var collision_shape_2d = $CollisionShape2D
@onready var SPEED : float = 50
@onready var target : Node = $"../cat"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _process(delta):
	SPEED *= 1.0001

func _physics_process(delta):
	velocity = Vector2.ZERO
	velocity = position.direction_to(target.position) * SPEED
	move_and_slide()
