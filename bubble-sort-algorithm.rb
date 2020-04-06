def bubble_sort(array)
  length = array.length
  elem_moved = true
  while elem_moved
    elem_moved = false
    array.each_with_index {
      |val, i|
      if array[i] != array[length - 1]
        if array[i] > array[i + 1]
          array[i], array[i + 1] = array[i + 1], array[i]
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

def bubble_sort_by(list)
  length = list.length
  list.select { |value|
    count = 0
    while count + 1 < length
      condition = yield(list[count], list[count + 1]) > 0
      condition ? (list[count], list[count + 1] = list[count + 1], list[count]) : nil
      count += 1
    end
  }
  list
end

array = bubble_sort_by(["hi", "hello", "hey"]) do |left, right|
  left.length - right.length
end
print array
