extends Control


func _on_Button_pressed():
	get_tree().change_scene("res://SceneManager.tscn")


func _on_ExitBtn_pressed():
	get_tree().quit()


func _on_ControlsBtn_pressed():
	get_tree().change_scene("res://Menus/SettingsMenu.tscn")
