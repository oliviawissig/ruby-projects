## bubble sort! a sorting algorithm that compares each 
## value to the value next to it and swaps values accordingly
## until it reaches the end of the array. it repeats and continues 
## the process while shortening the array by one after every 
## iteration. once it compares each value against the other values
## in the array, the expected result is a sorted array. 
## 
def bubble_sort(arr)
  temp_arr = []
  arr.each{|x| temp_arr << x }
  
  until temp_arr.length == 1 do
    temp_arr.each_with_index do |x, index|
      if index == temp_arr.length-1
      else
        curr_x = arr[index]
        next_x = arr[index+1]
        if curr_x > next_x
          #swap numbers
          temp = curr_x 
          arr[index] = next_x
          arr[index+1] = temp
        end
      end
    end
    temp_arr.pop()
  end
  arr
end

#unsorted = [4,3,78,2,0,2]
unsorted = [228,181,624,87,929,152,137,498,482,190]
print "Unsorted list: ",unsorted,"\n"
sorted = bubble_sort(unsorted)
print "Sorted list: ",sorted,"\n"