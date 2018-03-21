
require 'pry'

# A method that updates the string by replacing consecutive repeating characters
# with a number representing the frequency. The replacement is done only if the
# string length will get reduced by this process.
def encode_repeating(my_string)
  index = 0
  duplication_count = 0
  if my_string == nil
    return my_string
  else
    (my_string.length + 1).times do
      if index == my_string.length || my_string[index] != my_string[index + 1]
        if duplication_count >= 1
          my_string[(index - duplication_count) + 1] = (duplication_count + 1).to_s
          if duplication_count >= 2
            deletion_index = (index - duplication_count) + 2
            until deletion_index > index
             (duplication_count).times do
                my_string.slice!(deletion_index)
                deletion_index += 1
              end
            end
          end
        end
        duplication_count = 0
      else #my_string[index] == my_string[index + 1]
        duplication_count +=1
      end
      index += 1
    end
  end
end
