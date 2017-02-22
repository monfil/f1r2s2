def linear_search(number, array)
  length = 0
  count = 0
  while array[length] != nil
    length += 1
  end
  while count < length
    if array[count] == number
      return count
    else
      count += 1
    end
  end
end

def global_linear_search(item, arr)
  length = 0
  count = 0
  indexes = []
  while arr[length] != nil
    length += 1
  end
  while count < length
    if arr[count] == item
      indexes << count
      count += 1
    else
      count += 1
    end
  end
  indexes
end

random_numbers = [ 4, 3, 2, 20, 5, 64, 78, 11, 43 ]

p linear_search(20, random_numbers)
p linear_search(29, random_numbers)

arr = "entretenerse".split('')

p global_linear_search("e", arr)