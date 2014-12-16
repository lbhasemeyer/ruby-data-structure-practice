require 'pp'
require_relative 'curriculum'

# Print out the lesson names with the total number of comments
#
# Expected output
#
#   Orientation
#     Name Games - 3
#     Mind Maps - 4
#     Sequence Diagrams - 2
#   Rails Basics
#     Controllers - 5
#     Models - 0
#     Views - 8
#     Migrations - 2
#   CRUD
#     Create - 3
#     Read - 1
#     Update - 6
#     Delete - 2


CURRICULUM[:units].each do |unit|
  puts "#{unit[:name]}"
  unit[:lessons].each do |lesson|
    comments = 0
    lesson[:occurrences].each do |date, info|
      comments = comments + info[:comments].count
    end
    puts "  #{lesson[:name]} - #{comments}"
  end
end
