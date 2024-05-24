class_name Player
extends CharacterBody2D

@onready var state_machine: StateMachine = $StateMachine
@onready var idle: Idle = $StateMachine/Idle
@onready var move: Move = $StateMachine/Move

const SPEED = 50
const MAX_SPEED = 300
const ACCELERATION = 20
const JUMP_SPEED = -300

var gravity: float = ProjectSettings.get_setting("physics/2d/default_gravity")
var can_jump := true


func _ready() -> void:
	idle.moving.connect(state_machine.change_state.bind(move))
	move.idle.connect(state_machine.change_state.bind(idle))


func _physics_process(delta: float) -> void:
	move_and_slide()


func is_moving() -> bool:
	return not is_on_floor() or Input.get_axis("move_left", "move_right") or Input.is_action_pressed("jump")


func apply_gravity(delta: float) -> void:
	if not is_on_floor():
		velocity.y += gravity * delta


func jump() -> void:
	velocity.y = JUMP_SPEED
	can_jump = false


func move_x(delta: float, direction: float) -> void:
	velocity.x = lerpf(velocity.x, direction * MAX_SPEED, ACCELERATION * delta)
	velocity.x = clamp(velocity.x, -MAX_SPEED, MAX_SPEED)
