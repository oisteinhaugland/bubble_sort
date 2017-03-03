# make a loop that goes through object of an array, and compares it to the next
# if left is greater than right, swap

#this has to be done n-1 times

#arraysorted går en gang for mye. få den til å gå 1 mindre gang, fordi du kan ikke skjekke det siste tallet mot nil

def bubble_sort(numbers)
	counter = 0
	n = 0

	for counter in (1..numbers.size)
		numbers.each do |left, right|
						
		end	
	end

end    


def leftIsGreater?(x,y)
	x > y	
end

def arraySorted?(array)
	no_swap = true

	array.each do |x,y|
		if x > y
			no_swap = false
		end
	end
	no_swap ? true : false
end



oisteihArray = [4,3,78,2,0,2]

    bubble_sort(oisteihArray)
    p leftIsGreater?(5,4)
    p arraySorted?(oisteihArray)
