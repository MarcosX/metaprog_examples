# encoding: UTF-8
class HelloYou
  attr_reader :name

  def initialize(name)
    @name = name
  end

  private
  def say_hello
    "Hello #{@name}"
  end
end

puts "Quem é você?"
name = gets.chomp

hello = HelloYou.new(name)
puts hello.send(:say_hello)
def hello.name=(name)
  @name = name
end
hello.name = name.upcase
puts hello.send(:say_hello)
