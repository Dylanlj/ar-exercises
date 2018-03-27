require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...


class Employee < ActiveRecord::Base
  validates  :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 40,
    less_than_or_equal_to: 200
  }
  validates :store_id, presence: true
end

class Store < ActiveRecord::Base

  # validates :name, length: {minimum: 3}
  # validates :annual_revenue, numericality: {
  #   only_integer: true,
  #   greater_than_or_equal_to: 0
  # }
  # validate :women_or_mens_clothes


  def women_or_mens_clothes
    if (womens_apparel == nil) && (mens_apparel == nil)
      errors.add(:no_clothes, "they don't sell any clothes")
    end
  end

  # puts "gimme a store name"
  # new_store = $stdin.gets.chomp
  # t = Store.new(name: new_store, womens_apparel: true)
  # t.save
  # puts t.errors.messages

  # t.errors.messages.each do |newError|
  #   puts newError
  # end
end

