class_name Player
extends CharacterBody2D

@onready var state_machine: StateMachine = $StateMachine
@onready var idle: Idle = $StateMachine/Idle
@onready var run: Run = $StateMachine/Run

const SPEED = 300

func _ready() -> void:
	idle.moving.connect(state_machine.change_state.bind(run))
	run.idle.connect(state_machine.change_state.bind(idle))


func is_moving() -> bool:
	return Input.is_action_pressed("jump") or Input.is_action_pressed("move_left") or Input.is_action_pressed("move_right")
