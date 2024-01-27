extends Node
@onready var cat = $cat

# Called when the node enters the scene tree for the first time.
func _ready():
	var start_pos: Array = get_tree().get_nodes_in_group("start_pos")
	#var the_one = start_pos.pick_random()
	cat.global_position = Vector2(10,5)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
