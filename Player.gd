extends Node2D
class_name BoardTile

onready var sprite = $Sprite
onready var redPlayer = load("res://RedPlayer.png")
onready var bluePlayer = load("res://BluePlayer.png")

var group = "blank"
var matrix_position = Vector2.ZERO

func _ready():
	pass # Replace with function body.

func get_tile_pos() -> Vector2:
	return position

func set_group(new_group: String) -> void:
	group = new_group
	if(group == "blank"):
		sprite.texture = null
	elif(group == "white"):
		sprite.texture = bluePlayer

func set_tile_pos(new_position: Vector2) -> void:
	position = new_position

func set_matrix_position(new_position: Vector2) -> void:
	matrix_position = new_position

func _on_mouse_entered():
	print("-----------------------")
	print("Group: ", group)
	print("Matrix position: ", matrix_position)
	print("-----------------------")
