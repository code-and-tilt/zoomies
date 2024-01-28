extends Area2D

enum ITEMS { Bin, Book1, Book2, Book3, Cup1, Cup2, Hanger, Lamp, MusicPlayer, Telephone, Saucer }

const ITEM_NAMES = ["bin", "book1", "book2", "book3", "cup1", "cup2", "hanger", "lamp", "musicplayer", "telephone", "saucer"]

@onready var animated_sprite_2d = $AnimatedSprite2D2

@export var item: ITEMS
@export var points: int = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	var anim = ITEM_NAMES[item]
	animated_sprite_2d.play(anim)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	

func _on_body_entered(body):
	rotation = 45
	
