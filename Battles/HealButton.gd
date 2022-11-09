extends "res://Battles/ActionButton.gd"

func _on_pressed():
	var main = get_tree().current_scene
	var playerStats = BattleUnits.PlayerStats
	if playerStats != null:
		if playerStats.mp >= 8:
			playerStats.hp += 8
			playerStats.mp -= 8
			playerStats.ap -= 1
