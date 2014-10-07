# Today
puts "How for did you run today?"
today = gets.to_f
# Previous days
f = File.new("distance.dat","r")
previous_days = f.gets.to_f
f.close
# Compute total distance
total = previous_days + today
f = File.new("distance.dat","w")
f.puts(total.to_s)
f.close
# Output total
f = File.new("distance.dat","r")
puts "You've run:"
puts(f.gets)
f.close
