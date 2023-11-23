
module Printable
  def print_info
    puts "Information about the object:"
    instance_variables.each do |var|
      puts "#{var}: #{instance_variable_get(var)}"
    end
  end
end

class MyClass
  include Printable

  def initialize(name, age)
    @name = name
    @age = age
  end
end

obj = MyClass.new("Roman", 20)

obj.print_info
