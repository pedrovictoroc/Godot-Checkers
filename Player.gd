extends Node2D
class_name BoardTile

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func get_tile_pos() -> Vector2:
	return position
	

func set_tile_pos(new_position: Vector2) -> void:
	position = new_position


func _on_mouse_entered():
	print("teste")
