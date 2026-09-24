extends Marker2D

const PIPE = preload("uid://rt1rep2y7dng")


func _on_timer_timeout() -> void:
	var pipes = PIPE.instantiate()
	pipes.bird_hit.connect(get_parent()._on_bird_die)
	var randomy = randf_range(490,560)
	pipes.global_position = Vector2(global_position.x, randomy)
	get_parent().add_child(pipes)
