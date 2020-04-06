def bubble_sort(array)
  length = array.length
  elem_moved = true
  while elem_moved #to keep looping in the array until theres any swap positions
    elem_moved = false
    array.each_with_index {
      |val, i|
      if array[i] != array[length - 1] # to avoid compare the last item with null
        if array[i] > array[i + 1]
          array[i], array[i + 1] = array[i + 1], array[i]
          print "#{array}\n"
          elem_moved = true
        end
      end
    }
  end
  array
end

array = [2, 4, 200, 1, 9, 18, 20, 1]
print "Original array #{array}\n "
print "Sorted array#{bubble_sort(array)}"
