module Fetcher
  def fetch(item)
    puts "I'll bring that #{item} right back!"
  end
end


class Dog
  include Fetcher
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

dog = Dog.new("Fido")
dog.fetch("ball")