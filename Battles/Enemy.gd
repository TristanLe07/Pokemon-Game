extends Node2D

const BattleUnits = preload("res://Battles/BattleUnits.tres")

var hp = 75 setget set_hp
var target = null


onready var hpLabel = $hpLabel
onready var animationPlayer = $AnimationPlayer

signal enemy_died
signal end_turn

func set_hp(new_hp):
	hp = new_hp
	hpLabel.text = str(hp) + "hp"

func attack() -> void:
	yield(get_tree().create_timer(0.4), "timeout")
	animationPlayer.play("Attack")
	yield(animationPlayer, "animation_finished")
	$Timer.start()
	emit_signal("end_turn")

func deal_damage():
	BattleUnits.PlayerStats.hp -= 7

func take_damage(amount):
	self.hp -= amount
	if is_dead():
		emit_signal("enemy_died")
		queue_free()
		get_tree().change_scene("res://Battles/BattleWon.tscn")
	else:
		animationPlayer.play("Shake")
	
func is_dead():
	return hp <= 0

func _ready():
	BattleUnits.Enemy = self
	
func _exit_tree():
	BattleUnits.Enemy = null
