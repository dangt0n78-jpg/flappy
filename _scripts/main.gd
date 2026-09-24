extends Node

var _is_game_over := false

func _ready() -> void:
	get_tree().paused = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("ui_accept") and _is_game_over == false:
		$bird.show()
		$uilayer/Label.show()
		$uilayer/ready.hide()
		get_tree().paused = false
	
	$uilayer/Label.text = str(Global.score)

func _on_bird_die():
	_is_game_over = true
	$uilayer/gameover.show()
	$uilayer/replay.show()
	get_tree().paused = true


func _on_replay_pressed() -> void:
	get_tree().paused = false
	$uilayer/gameover.hide()
	$uilayer/replay.hide()
	Global.score = 0
	get_tree().reload_current_scene()


func _on_floor_body_entered(body: Node2D) -> void:
	_on_bird_die()
