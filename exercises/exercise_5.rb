require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@company_sum = Store.sum(:annual_revenue)

puts "Total annual revenue of all stores #{@company_sum}"
puts "Annual average revenue #{@company_sum / Store.count}"
puts "Number of stores whos revenue was greater than a million #{Store.where("annual_revenue > 1000000").count}"
