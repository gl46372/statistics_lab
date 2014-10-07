f = File.new("temp.dat","r")
c_temps = f.readlines
f.close


f_temps = c_temps.collect do |temp|
	temp.to_f * 9.0/5.0 + 32.0
end

f =File.new("converted_temp.dat","w")
f.write f_temps.join("/n")
f.close
puts f_temps

