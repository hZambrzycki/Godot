class_name Plant extends Node2D

@onready var hit_box = $HitBox

# Called when the node enters the scene tree for the first time.
func _ready():
	$HitBox.Damaged.connect(TakeDamage)

	pass # Replace with function body.

func TakeDamage(_hurt_box : HurtBox) -> void:
	queue_free()
	pass
