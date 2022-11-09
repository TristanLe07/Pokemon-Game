extends "res://Battles/ActionButton.gd"

func _on_pressed():
	var enemy = BattleUnits.Enemy
	var playerStats = BattleUnits.PlayerStats
	if enemy != null and playerStats != null:
		enemy.take_damage(3)
		playerStats.mp += 2
		playerStats.ap -=1
