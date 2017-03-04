
require 'benchmark'

#optimized - this solution had an insane impact on performace, went from 21 second in my old one to 0.04 seconds
#after each passthrough, every item after the last swapp is in the correct spot
#they can be ignore the next pass.

def bubbleSort(numbers)
	numbersToCheck = numbers.size
	while numbersToCheck != 0
		newLength = 0
		for i in (1..numbersToCheck-1)
			if numbers[i-1] > numbers[i]
				numbers[i-1], numbers[i] =  numbers[i], numbers[i-1]
				newLength = i
			end
		end
		numbersToCheck = newLength
	end
	numbers
end

someNumbers = [4,3,78,2,0,2,6,2,4,6,1,7,4,7,129,694,3,78,2,0,2,6,2,4,6,1,7,4,7,129,694,3,78,2,0,2,6,2,4,6,1,7,4,7,129,694,3,78,2,0,2,6,2,4,6,1,7,4,7,129,694,3,78,2,0,2,6,2,4,6,1,7,4,7,129,694,3,78,2,0,2,6,2,4,6,1,7,4,7,129,694,3,78,2,0,2,6,2,4,6,1,7,4,7,129,694,3,78,2,0,2,6,2,4,6,1,7,4,7,129,694,3,78,2,0,2,6,2,4,6,1,7,4,7,129,694,3,78,2,0,2,6,2,4,6,1,7,4,7,129,694,3,78,2,0,2,6,2,4,6,1,7,4,7,129,694,3,78,2,0,2,6,2,4,6,1,7,4,7,129,694,3,78,2,0,2,6,2,4,6,1,7,4,7,129,694,3,78,2,0,2,6,2,4,6,1,7,4,7,129,694,3,78,2,0,2,6,2,4,6,1,7,4,7,129,694,3,78,2,0,2,6,2,4,6,1,7,4,7,129,694,3,78,2,0,2,6,2,4,6,1,7,4,7,129,694,3,78,2,0,2,6,2,4,6,1,7,4,7,129,694,3,78,2,0,2,6,2,4,6,1,7,4,7,129,694,3,78,2,0,2,6,2,4,6,1,7,4,7,129,694,3,78,2,0,2,6,2,4,6,1,7,4,7,129,694,3,78,2,0,2,6,2,4,6,1,7,4,7,129,694,3,78,2,0,2,6,2,4,6,1,7,4,7,129,694,3,78,2,0,2,6,2,4,6,1,7,4,7,129,694,3,78,2,0,2,6,2,4,6,1,7,4,7,129,694,3,78,2,0,2,6,2,4,6,1,7,4,7,129,694,3,78,2,0,2,6,2,4,6,1,7,4,7,129,694,3,78,2,0,2,6,2,4,6,1,7,4,7,129,694,3,78,2,0,2,6,2,4,6,1,7,4,7,129,694,3,78,2,0,2,6,2,4,6,1,7,4,7,129,694,3,78,2,0,2,6,2,4,6,1,7,4,7,129,694,3,78,2,0,2,6,2,4,6,1,7,4,7,129,694,3,78,2,0,2,6,2,4,6,1,7,4,7,129,694,3,78,2,0,2,6,2,4,6,1,7,4,7,129,694,3,78,2,0,2,6,2,4,6,1,7,4,7,129,694,3,78,2,0,2,6,2,4,6,1,7,4,7,129,694,3,78,2,0,2,6,2,4,6,1,7,4,7,129,694,3,78,2,0,2,6,2,4,6,1,7,4,7,129,694,3,78,2,0,2,6,2,4,6,1,7,4,7,129,69]
puts Benchmark.measure {bubbleSort(someNumbers)}
#p bubbleSort(someNumbers)













=begin
first solution, works but super slow

def bubbleSort(numbers)
	tempArray = []
	while arraySorted?(swapping(numbers)) == false
		tempArray = swapping(numbers)
		numbers = tempArray
	end
	numbers
end

def swapping(numbers)
	n = numbers.size
	noSwaps = false
	loop do
		swapped = false
		for i in (1..n-1)
			
			if numbers[i-1] > numbers[i]
				numbers[i-1], numbers[i] =  numbers[i], numbers[i-1]
				swapped = true
			end
		end
		if swapped
			break
		elsif i == n - 1 && !swapped
			noSwaps = true
			break
		end
		n = n - 1
	end
	numbers
end


def leftIsGreater?(x,y)
	x > y	
end

def arraySorted?(array)
	no_swap = true
	array.each_with_index do |a,i|
		unless  i == array.size - 1
			array.each_with_index do |b,t|
				if leftIsGreater?(a,b) && t > i
					no_swap = false
				end	
			end
		end
	end
	no_swap ? true : false
end

=end


 
   
  
