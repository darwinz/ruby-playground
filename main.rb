monster = Monster.new("Fluffy")
monster.say { puts "Welcome to my home." }

monster.scream do
  puts "BOO!"
end

monster.scare do
  puts "Go away!"
end

monster.run do
  puts "Going to get you!"
end

monster.hide do |monster|
  puts "Running away and hiding!"
  puts monster.inspect
end

puts "\n"
monster.print_scoreboard