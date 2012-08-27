#!/usr/bin/env ruby

def quicksort(array)
  return array if array.length <= 1
  pivot = array.pop
  lte=[]
  gt=[]
  array.each do |i|
    lte << i if (i <= pivot)
    gt << i if (i > pivot)
  end
  return quicksort(lte) + [pivot] + quicksort(gt)
end

to_sort = (((0..10).to_a)*3).shuffle 

sorted = quicksort(to_sort) 
puts to_sort.inspect
puts sorted.inspect
