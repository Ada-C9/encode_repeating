# A method that updates the string by replacing consecutive repeating characters
# with a number representing the frequency. The replacement is done only if the
# string length will get reduced by this process.
def encode_repeating(my_string)
  return nil if my_string.nil?
  return my_string if my_string.length <= 1

  i = 0
  j = 0
  k = 0
  while j <= i && i < my_string.length
    k = i
    if my_string[i] != my_string[i + 1]
      my_string[j] = my_string[i]

    else
      counter = 1
      while my_string[i] == my_string[i + 1]
        i += 1
        counter += 1
      end

      if counter == 2
        my_string[j] = my_string[k]
        my_string[j + 1] = my_string[k]
      else
        my_string[j] = my_string[k]
        my_string[j + 1] = counter.to_s
      end
      j += 1
    end
    j += 1
    i += 1
  end

  my_string[j...my_string.length] = ""
  return my_string
end
