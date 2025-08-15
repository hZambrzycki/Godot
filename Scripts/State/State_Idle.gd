class_name State_Idle extends State

@onready var walk : State = $"../Walk"
@onready var attack = $"../Attack"
func init() -> void:
	pass
#What happens when the player enters this State
func Enter() -> void:
	player.UpdateAnimation("idle")
	pass
#What happens when the player exits this State
func Exit() -> void:
	pass
#What happens during the _process update in this State?
func Process(_delta) -> State:
	if player.direction != Vector2.ZERO:
		return walk
	player.velocity = Vector2.ZERO
	return null
#What happens during the _physics update in this State?
func Physics(_delta) -> State:
	return null
#What happens with input events in this State?
func HandleInput(_event: InputEvent) -> State:
	if _event.is_action_pressed("attack"):
		return attack
	if _event.is_action_pressed("interact"):
		PlayerManager.interact_pressed.emit()
	return null
