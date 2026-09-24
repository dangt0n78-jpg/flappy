extends Area2D

signal bird_passed



func _on_body_exited(body: Node2D) -> void:
		Global.score += 1
