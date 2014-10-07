f = File.new("hicp.dat","r")
array = f.readlines
f.close
sum = 0
number = 0
array.each do |value|
	sum = sum + value.to_f
	number = number + 1
end
average = sum / number
numerator = 0
Sx = 0
array.each do |value|
	numerator = numerator + (value.to_f - average)**2
end
n = File.new("zscores.dat","w")
Sx = (numerator / (number - 1))**0.5
zscore = 0
array.each do |value|
        zscore = (value.to_f - average) / Sx
        n.puts(zscore)
end
puts "The mean of the HICP values is: " + average.to_s
puts "The Standard Deviation of the HICP values is: " + Sx.to_s
puts "The Zscores are located in a .dat file called 'zscores.dat' in the projects folder"
puts "Done"
