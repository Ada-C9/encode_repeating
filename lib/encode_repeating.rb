
require 'pry'

# A method that updates the string by replacing consecutive repeating characters
# with a number representing the frequency. The replacement is done only if the
# string length will get reduced by this process.

=begin
  Variable count:
  1. my_string (input)
  2. index
  3. duplication_count
=end



def encode_repeating(my_string)
  if my_string.nil?
    return my_string
  else
    index = (my_string.length - 1)
    duplication_count = 0
    (my_string.length + 1).times do
      if my_string[index] == my_string[index - 1]
        duplication_count += 1
      elsif
        index == 0 || my_string[index] != my_string[index - 1]
        if duplication_count >= 2
          my_string[index + 1] = (duplication_count + 1).to_s
          (duplication_count - 1).times do
            my_string.slice!((index + 2))
          end
        end
        duplication_count = 0
      end
      index -= 1
    end
  end
end
