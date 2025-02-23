extends Node2D

var enemy_template = preload("res://enemy.tscn")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$text_game_over.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_timer_timeout() -> void:
	var enemy = enemy_template.instantiate()
	enemy.position.x = randi_range(1, 8) * 60
	enemy.connect("game_over", _on_game_over)
	add_child(enemy)

func _on_game_over():
	print("GAME OVER")
	$text_game_over.visible = true
