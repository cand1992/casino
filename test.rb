@point = []
@total = 3
@point << @total
puts @point
puts @point[0]

puts "Press enter to roll"
press = gets.strip
if press = "/r"
  puts "worked"
end