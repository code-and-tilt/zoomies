class_name cat
extends CharacterBody2D

@onready var character_body_2d = $CharacterBody2D
@onready var collision_shape_2d = $CollisionShape2D
@onready var SPEED: float = 100

var GRAVITY: float = ProjectSettings.get("physics/2d/default_gravity")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

func _physics_process(delta):
	var dir_x = Input.get_axis("MoveLeft", "MoveRight")
	var dir_y = Input.get_axis('MoveUp', "MoveDown")
	var anim = "idle"
	anim = "idle" if dir_x ==0 and dir_y == 0 else "run"
	
	if Input.is_action_just_pressed("RunLeft"):
		velocity.x += GRAVITY * delta
	velocity.x = SPEED * dir_x
	velocity.y = min(velocity.y, GRAVITY)
	
	if Input.is_action_just_pressed("RunRight"):
		velocity.x += GRAVITY * delta
	velocity.x = SPEED * dir_x
	velocity.y = min(velocity.y, GRAVITY)

	move_and_slide()
	
	character_body_2d.play(anim)
