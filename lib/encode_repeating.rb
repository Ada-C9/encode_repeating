# A method that updates the string by replacing consecutive repeating characters
# with a number representing the frequency. The replacement is done only if the
# string length will get reduced by this process.
def encode_repeating(my_string)
  return my_string if my_string.nil? || my_string.length == 0

  index = 0
  while index < my_string.length
    m = index
    char = my_string[m]
    while my_string[m + 1] == char
      m += 1
    end

    if m - index > 1
      (m - index - 1).times do |i|
        my_string.slice!(m - i)
      end
      my_string[index + 1] = (m - index + 1).to_s
      index += 2
    else
      index = m + 1
    end
  end

  return my_string
end
