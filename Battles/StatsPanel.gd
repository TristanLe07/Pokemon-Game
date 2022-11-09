extends Panel

onready var hpLable = $HBoxContainer/HP
onready var apLable = $HBoxContainer/AP
onready var mpLable = $HBoxContainer/MP

func _on_PlayerStats_hp_changed(value):
	hpLable.text = "HP\n"+str(value)
	
func _on_PlayerStats_ap_changed(value):
	apLable.text = "AP\n"+str(value)

func _on_PlayerStats_mp_changed(value):
	mpLable.text = "MP\n"+str(value)
