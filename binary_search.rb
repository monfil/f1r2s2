def binary_search(element, array)
  length = 0
  found_it = false
  
  while array[length] != nil
    length += 1
  end
  
  inf = 0
  sup = length - 1
  
  until found_it do
    if inf > sup
      found_it = true 
      return nil
    end
    middle = (inf + sup) / 2
    if array[middle] == element
      found_it = true
    elsif array[middle] < element
      inf = middle + 1
    elsif array[middle] > element
      sup = middle - 1
    end              
  end
  middle
end

p binary_search(1, [1]) == 0
p binary_search(4, [1,2,3]) == nil
p binary_search(4, [1,2,3,4,5]) == 3
p binary_search(6, [1,2,3,4,5,6,7,8,9]) == 5
p binary_search(2, [1,2,3,5,6,7,8,9,10,11]) == 1
p binary_search(5, [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]) == 4