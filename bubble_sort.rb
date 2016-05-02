require 'rspec'

class Bubble
  def initialize(array)
    @array = array
  end

  def sort
    p "Starting Sort"
    length = @array.length
    p "Array length: #{@array.length}"
    loop do
      p "Loop started"
      is_swapped = false #assume we need no swap yet
      p "Is swapped? #{is_swapped}"
      # each time we loop, we decrement our loop by 1
      # aka i--
      (length-1).times do |i|
        p "Interior loop inside of loop has started"
        p "incrementor: #{i}"
        # yo dawg i herd u liek loops so i loop in yo loop
        # to loop de loop yolo
        # @array[i] == left value
        # @array[i+1] == right value
        if (@array[i] > @array[i+1]) # compare pairs
          # if so, we just swap values
          @array[i], @array[i + 1] = @array[i+1], @array[i]
          # and let ourselves know
          is_swapped = true
          p "Swapped pair #{@array[i]} with #{@array[i+1]}"
        end  #end comparison if
      end # end .times
      break if not is_swapped # break the loop if is_swapped == false
    end # end
    return @array # return our slowly sorted array
  end #end sort
end # end class

nums = [6,42,13,1,409]

sorted_nums = Bubble.new(nums).sort
# sorted_nums = 1, 6, 13, 42, 409
nums2 = [1,18,9,7,62,50,2,8,90,80]
sorted_nums2 = Bubble.new(nums2).sort
puts sorted_nums2

describe Bubble do
  it "should be sorted1" do
    sorted_nums = [1, 6, 13, 42, 409]
  end

  it "should be sorted2" do
    sorted_nums2 = [1,2,7,8,9,18,50,62,80,90]
  end
end

# challenge!
# with a partner you are NOT sitting next to

# 1) Run this test.
# 2) Draw on your table the unsorted array.
# 3) Using markers, draw out via what is logged
#    how this is actually being sorted.
# 4) By visualizing how things are sorted, it is easier
#    to understand the code.
# 5) Create an array of 10+ numbers, repeat this process.
# 6) Replace the array in the test to make this work.
