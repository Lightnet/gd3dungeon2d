extends Control

var CLASS_TEST = preload("res://visualscripts/testfoo.vs")
#var test
var testvs_node

#signal my_signal

func _ready():
	#visual script
	testvs_node = get_node("../../SpriteTest")
	#print(testvs_node)
	#print(testvs_node.text)#do not work
	#testvs_node.foo() #works
	testvs_node.emit_signal("send")
	
	pass
	
func _on_btntest_pressed():
	testvs_node = get_node("../../SpriteTest")
	#testvs_node.emit_signal("send")
	testvs_node.emit_signal("send")
	
	#print(CLASS_TEST)
	#print(CLASS_TEST.get_function_node_id("foo"))
	#if CLASS_TEST.get_function_node_id("foo"):
		#print("found!")
		#print(CLASS_TEST.get_function_node_id("foo2"))
		#CLASS_TEST.emit_signal("send")
	pass # replace with function body
