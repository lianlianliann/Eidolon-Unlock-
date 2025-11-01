class_name PlayerInput
extends Node

@export var other_scene : StringName
@export var player : Player
@export var actions : PlayerInputActions

func _process(_delta: float) -> void:
	player.direction = Input.get_vector(actions.left, actions.right, actions.up, actions.down)

func _unhandled_input(_event: InputEvent) -> void:
	player.run = Input.is_action_pressed(actions.run)

	if Input.is_action_just_pressed(actions.jump):
		player.try_jump()
	
	if Input.is_action_just_pressed(actions.interact):
		player.interact = !player.interact

	if Input.is_action_just_pressed(actions.transform):
		GameState.player_position = player.global_position
		GameState.changed_scene = true
		get_tree().change_scene_to_file(other_scene)
		
