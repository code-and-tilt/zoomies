class_name cat
extends CharacterBody2D

@onready var animated_sprite_2d = $AnimatedSprite2D
@onready var collision_shape_2d = $CollisionShape2D
@onready var SPEED: float = 100


var GRAVITY: float = ProjectSettings.get("physics/2d/default_gravity")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
func get_input():
	var input_direction = Input.get_vector("Left", "Right", "Up", "Down")
	velocity = input_direction * SPEED
	var anim = "idle"
	anim = "idle" if input_direction == null else "run"

func _physics_process(delta):

	get_input()
	
	if Input.is_action_just_pressed("RunLeft"):
		SPEED = SPEED * 1.3
	
	if Input.is_action_just_pressed("RunRight"):
		SPEED = SPEED * 1.3

	move_and_slide()
	
