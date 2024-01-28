extends Node
@onready var cat = $cat
@onready var enemy = $Enemy

# Called when the node enters the scene tree for the first time.
func _ready():
	var start_pos: Array = get_tree().get_nodes_in_group("start_pos")
	#var the_one = start_pos.pick_random()
	cat.global_position = Vector2(190,2)
	enemy.global_position = Vector2(180,2)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
