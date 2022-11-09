extends Node

const BattleUnits = preload("res://Battles/BattleUnits.tres")

onready var battleActionButtons = $Ui/GridContainer

func _ready():
	start_player_turn()

func start_enemy_turn():
	battleActionButtons.hide()
	var enemy = BattleUnits.Enemy
	if enemy != null:
		$Enemy/PikachuAttack.play()
		enemy.attack()
		yield(enemy, "end_turn")
	start_player_turn()
	
func start_player_turn():
	battleActionButtons.show()
	var playerStats = BattleUnits.PlayerStats
	playerStats.ap = playerStats.max_ap
	yield(playerStats, "end_turn")
	start_enemy_turn()


func _on_Enemy_enemy_died():
	battleActionButtons.hide()

