extends Node2D

const speed = -100.0

signal bird_hit

func _process(delta: float) -> void:
	position.x += speed * delta


func _on_lowerpipe_body_entered(body: Node2D) -> void:
	bird_hit.emit()


func _on_upperpipe_body_entered(body: Node2D) -> void:
	bird_hit.emit()
