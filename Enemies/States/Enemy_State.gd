class_name EnemyState extends Node

# Store reference to the enemy that this state belongs to
var enemy : Enemy
var state_machine : EnemyStateMachine

func init() -> void:
	pass

func enter() -> void:
	pass
	
func exit() -> void:
	pass

func process(_delta) -> EnemyState:
	return null

func physics(_delta : float) -> EnemyState:
	return null
