require 'pry'

def hello(array)
  i = 0
  collection = []
  while i < array.length

    collection.push(yield(array[i]))
    i += 1
  end
  collection
end

puts hello(["Tim", "Tom", "Jim"]) { |name|  "Hi, #{name}" }
#note this is not puts hi name, just hi name. puts hiname returns nothing. this returns a value
#the vlue then gets saved to the collection array

#we've build a function that does aexactly wht the collect method does
