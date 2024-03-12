extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_back_pressed():
	pass # Replace with function body.


func _on_forward_pressed():
	pass # Replace with function body.


func _on_reload_pressed():
	pass # Replace with function body.


func _on_home_pressed():
	pass # Replace with function body.


func _on_submit_pressed():
	var url = $HBoxContainer/Address.text
	$HTTPRequest.request(url)


func _on_options_pressed():
	pass # Replace with function body.


func _on_http_request_request_completed(result, response_code, headers, body):
	var response = body.get_string_from_utf8()
	print("Response code: ", response_code)
	print("Response body: ", response)
	$ScrollContainer/TextEdit.text = response
