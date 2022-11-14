extends Control

var music_bus = AudioServer.get_bus_index("Music")

func _on_Button_pressed():
	get_tree().change_scene("res://Menus/Controls.tscn")


func _on_HSlider_value_changed(value):
	AudioServer.set_bus_volume_db(music_bus,true)
	
	if value == -30:
		AudioServer.set_bus_mute(music_bus,true)
	else:
		AudioServer.set_bus_mute(music_bus,false)


func _on_MainMenu_pressed():
	get_tree().change_scene("res://Menus/MainMenu.tscn")
