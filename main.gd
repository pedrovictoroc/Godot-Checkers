extends Node2D

onready var area1Sprite = $Area1/Sprite
onready var area2Sprite = $Area2/Sprite

const BOARD_DIMENSIONS = Vector2(8,8)

onready var board = $Board

var player = preload("res://player.png")
var standard = preload("res://icon.png")

# Called when the node enters the scene tree for the first time.
func _ready():
	generate_tile()

func _on_Area1_input_event(viewport, event, shape_idx):
	if(event is InputEventMouseButton and event.is_pressed()):
		print('entrei')
		area1Sprite.texture = player
		area2Sprite.texture = standard


func _on_Area2_input_event(viewport, event, shape_idx):
	if(event is InputEventMouseButton and event.is_pressed()):
		print('entrei')
		area2Sprite.texture = player
		area1Sprite.texture = standard

func generate_tile():
	for x in range(BOARD_DIMENSIONS.x):
		for y in range(BOARD_DIMENSIONS.y):
			var new_tile = load("res://Player.tscn").instance()
			add_child(new_tile)
			new_tile.set_tile_pos(Vector2(x,y)*68)
