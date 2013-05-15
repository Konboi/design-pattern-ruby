# -*- coding: utf-8 -*-
class SomeClass
  def a_method
    # instance method
    puts 'a method'
  end

  def self.a_method
    # class method
    puts 'self a method'
  end
end


puts SomeClass.a_method
a_class = SomeClass.new
puts a_class.a_method
