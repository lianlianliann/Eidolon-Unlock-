class_name Entity
extends PlatformerCharacter2D

func _ready() -> void:
	animated_sprite.play(animations.idle_1)

func _physics_process(delta: float) -> void:
	_apply_gravity(delta)



