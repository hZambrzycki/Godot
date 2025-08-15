class_name State_Attack extends State

@export var attack_sound : AudioStream
@export_range(1, 20,0.5) var decelerate_speed : float = 5.0

@onready var walk = $"../Walk"
@onready var animation_player = $"../../AnimationPlayer"
@onready var attack_anim = $"../../Sprite2D/AttackEffectSprite/AnimationPlayer"
@onready var audio : AudioStreamPlayer2D = $"../../Audio/AudioStreamPlayer2D"

@onready var idle = $"../Idle"
@onready var hurt_box = %AttackHurtBox


var attacking : bool = false
func init() -> void:
	pass
#What happens when the player enters this State
func Enter() -> void:
	player.UpdateAnimation("attack")
	attack_anim.play("attack_"+ player.AnimDirection())
	animation_player.animation_finished.connect(EndAttack)
	audio.stream = attack_sound
	audio.pitch_scale = randf_range(0.9, 1.1)
	audio.play()
	attacking = true
	await get_tree().create_timer(0.075).timeout
	if attacking:
		hurt_box.monitoring = true
	pass
#What happens when the player exits this State
func Exit() -> void:
	animation_player.animation_finished.disconnect(EndAttack)
	attacking = false
	hurt_box.monitoring = false
	pass
#What happens during the _process update in this State?
func Process(_delta) -> State:
	player.velocity -= player.velocity * decelerate_speed * _delta
	if attacking == false:
		if player.direction == Vector2.ZERO:
			return idle
		else:
			return walk
	return null
#What happens during the _physics update in this State?
func Physics(_delta) -> State:
	return null
#What happens with input events in this State?
func HandleInput(_event: InputEvent) -> State:
	return null
func EndAttack(_newAnimName : String) -> void :
	attacking = false
