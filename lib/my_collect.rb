# You are writing a method that behaves just like the real #collect method. It should take in an argument of a collection,
# iterate over that collection using a while loop, and execute the code in the block you call it with for each element in
# the collection (use the yield keyword). It should return the modified collection.
# What if your method was being invoked with a totally different collection and a totally different code block? For example,
# let's say your #my_collect method is given an argument of a list of programming languages, and passed a block that capitalizes
# the elements yeiled to it.
# def my_collect(array)
#   i = 0
#   while i < array.length
#     yield(array[i])
#     i += 1
#   end
#   array
# end
def my_collect(array)
  my_array = []
  i = 0
  while i < array.length
    my_array.push(yield(array[i]))
  i += 1
  end
  my_array
end


students = ['Tim Jones', 'Tom Smith', 'Sophie Johnson', 'Antoin Miller']
my_collect(students) do |student|
  student.split(" ").first
end

#languages = ["ruby', 'javascript', 'python', 'objective-c"]
# my_collect(languages) do |lang|
#   lang.upcase
# end
