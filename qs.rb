def quicksort (array)
	
	print "input arr: {" , array, "}\n"
	
	if (array.length() <= 1)
		return array
	end

	pivot = array.pop()

	lte = []
	gt = []
	for i in array
		if (i <= pivot)
			lte.push(i)
		elsif (i > pivot)
			gt.push(i)
		end
	end

	print "lte arr #{lte.length()}: {" , lte, "}\n"
	print "gt arr #{gt.length()}: {" , gt, "}\n"

	return quicksort(lte), pivot, quicksort(gt)
end


sorted = quicksort( [3,2,1,4,0,5] )

print "sorted: " , sorted, "\n"
