macro "image_bounds [f5]" {
	name = getInfo("image.filename")
	name = substring(name,0,lengthOf(name)-4)
	name = "[insert/directory/name/here]" + name + ".csv"
	
	getSelectionBounds(x, y, width, height)
	x_top_left = x
	y_top_left = y
	x_top_right = x + width
	y_top_right = y
	x_bottom_left = x
	y_bottom_left = y + height
	x_bottom_right = x + width
	y_bottom_right = y + height

	setResult("x_top_left",0,x_top_left)
	setResult("y_top_left",0,y_top_left)
	setResult("x_top_right",0,x_top_right)
	setResult("y_top_right",0,y_top_right)
	setResult("x_bottom_left",0,x_bottom_left)
	setResult("y_bottom_left",0,y_bottom_left)
	setResult("x_bottom_right",0,x_bottom_right)
	setResult("y_bottom_right",0,y_bottom_right)

	updateResults()
	saveAs("Results", name)
	selectWindow("Results"); 
	run("Close")
