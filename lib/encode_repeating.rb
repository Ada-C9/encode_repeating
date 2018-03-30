# A method that updates the string by replacing consecutive repeating characters
# with a number representing the frequency. The replacement is done only if the
# string length will get reduced by this process.

def encode_repeating(my_string)

  return nil if my_string.nil?

  start = 0

  until my_string[start].nil?

    count = 1

    while my_string[start + count] == my_string[start]
      count += 1
    end

    if count < 3
      start += count
    else
      my_string[start + 1] = count.to_s
      my_string.slice!(start + 2, count - 2)
      start += 2
    end

  end

  return my_string

end
