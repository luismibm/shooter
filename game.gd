extends Node2D

var enemy_template = preload("res://enemy.tscn")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_timer_timeout() -> void:
	var enemy = enemy_template.instantiate()
	enemy.position.x = randi_range(1, 8) * 60
	add_child(enemy)
