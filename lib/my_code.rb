# Your Code 
def map(array)
  new =[]
  counter = 0
  while counter < array.length
 new.push(yield(array[counter]))
 counter += 1
end
new
end

def reduce(array,starting_point=nil)
  if starting_point 
    sum =starting_point
    counter=0
  else
    sum = array[0]
    counter= 1
  end
  while counter < array.length 
 sum = yield(sum, array[counter])
counter += 1
end
sum
end