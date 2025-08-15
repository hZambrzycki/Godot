class_name State extends Node

#Stores a reference to the playerthat this State belongs to
static var player: Player
static var state_machine: PlayerStateMachine

func _ready():
	pass
func _init() -> void:
	pass
#What happens when the player enters this State
func Enter() -> void:
	pass
#What happens when the player exits this State
func Exit() -> void:
	pass
#What happens during the _process update in this State?
func Process(_delta) -> State:
	return null
#What happens during the _physics update in this State?
func Physics(_delta) -> State:
	return null
#What happens with input events in this State?
func HandleInput(_event: InputEvent) -> State:
	return null
