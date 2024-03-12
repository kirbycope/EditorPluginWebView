@tool
extends EditorPlugin


const MainScene = preload("res://addons/webview/main.tscn")
var main_scene_instance


func _enter_tree():
	main_scene_instance = MainScene.instantiate()
	get_editor_interface().get_editor_main_screen().add_child(main_scene_instance)
	_make_visible(false)


func _exit_tree():
	if main_scene_instance:
		main_scene_instance.queue_free()


func _has_main_screen():
	return true


func _make_visible(visible):
	if main_scene_instance:
		main_scene_instance.visible = visible


func _get_plugin_name():
	return "WebView"


func _get_plugin_icon():
	return get_editor_interface().get_base_control().get_theme_icon("WorldEnvironment", "EditorIcons")
