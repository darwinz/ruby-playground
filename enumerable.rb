# https://ruby-doc.org/core-2.4.2/Enumerable.html

array = [1, 2, 3, 4, 5, 6]

array.each { |item| puts "Item: #{item}" }
array.each_with_index {|item, index| puts "[#{index}] #{item}"}
array.member?(3)
array.all? { |item| item > 3 }
array.any? { |item| item > 3 }
array.detect {|item| item > 3 }
array.select {|item| item > 3 }
# array.find_all is the same
array.map { |item| item + 3 }

array.inject {|s, element| s += element }  # 21 (sum of all items in array)

puts array.take(2)

hash = {name: "Jason", location: "Treehouse", position: "Teacher"}
hash.each{|key, value| puts "Key: #{key}, Value: #{value}"}
puts hash.map{|k,v| "#{k}: #{v}"}.inspect
puts hash.take(2).inspect

hash.map{|k, v| v}.map{|v| v.length}

puts array.inject{|sum, item| sum += item}
puts array.inject(&:+)