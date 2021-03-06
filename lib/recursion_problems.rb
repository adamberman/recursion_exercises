#Problem 1: You have array of integers. Write a recursive solution to find
#the sum of the integers.

def sum_recur(array)
	return 0 if array.empty?
	array[-1] + sum_recur(array[0..-2])
end


#Problem 2: You have array of integers. Write a recursive solution to
#determine whether or not the array contains a specific value.

def includes?(array, target)
	return false if array.empty?
	return true if array[-1] == target
	includes?(array[0..-2], target)
end


#Problem 3: You have an unsorted array of integers. Write a recursive
#solution to count the number of occurrences of a specific value.

def num_occur(array, target)
	return 0 if array.empty?
	count = array[-1] == target ? 1 : 0
	count += num_occur(array[0..-2], target)
end


#Problem 4: You have array of integers. Write a recursive solution to
#determine whether or not two adjacent elements of the array add to 12.

def add_to_twelve?(array)
	return false if array.length <= 1
	return true if array[-1] + array[-2] == 12
	add_to_twelve?(array[0..-2])
end


#Problem 5: You have array of integers. Write a recursive solution to
#determine if the array is sorted.

def sorted?(array)
	return array if array.empty?
	return true if array.length == 1
	return false if array[0] > array[1]
	sorted?(array[1..-1])
end


#Problem 6: Write the code to give the value of a number after it is
#reversed. Must use recursion. (Don't use any #reverse methods!)

def reverse(number)

end

