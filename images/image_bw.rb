require "./image_array.rb"

img = ImageArray.new("./panda.jpg")

img.each do |row|
	row.each do |pixel|
		pixel_grey = (pixel.red + pixel.blue + pixel.green)/3
		pixel.red = pixel_grey
		pixel.blue = pixel_grey
		pixel.green = pixel_grey
	end
end

img.write("./panda_bw.jpg")

