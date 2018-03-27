require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts "Exercise 8"
puts "----------"
class Store < ActiveRecord::Base
  has_many :employees

end


class Employee < ActiveRecord::Base
  belongs_to :store
  after_create :set_password




  def set_password
    puts "#{random_string} this is my random string ............"
    self.password = random_string
    self.save

  end

  def random_string (length = 8)
    source = ("a".."z").to_a
    key= ""
    length.times{ key += source[rand(source.size)] }
    key
  end

end
  @store1.employees.create(first_name:  "Ghenghis", last_name: "Khan", hourly_rate: 60)

