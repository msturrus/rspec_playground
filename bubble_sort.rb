require 'rspec'


class Bubble

  def initialize(array)
    @array = array
  end

  def sort
    p "Begin sort!"
    length = @array.length
    p "Array length #{@array.length}"
    loop do
      p "loop has begun!"
      is_swapped = false #assume we need no swap yet
      p "Is swapped? #{is_swapped}"
      #each time we loop, we decrement our loop by 1
      (length-1).times do |i|
        p "Interior loop inside of loop has begun"
        p "incrementor #{i}"
        #so many loops.
        #@array i == left value
        #@array[i+1] == right value
        if (@array[i] > @array[i+1]) # compare pairs
          @array[i], @array[i + 1] = @array[i+1], @array[i]
          is_swapped = true
          p "Swaped pair #{@array[i]} with #{@array[i+1]}"
        end # end comparison if
      end # end .times
      break if not is_swapped # break the loop if is_swapped == false
    end # end
    return @array #return our slowly sorted array
  end #end sort
end # end class

nums = [6,42,13,1,409]

sorted_nums = Bubble.new(nums).sort
puts sorted_nums
# 1, 6, 13, 42, 409
describe Bubble do
  it "should be sorted" do
    sorted_nums.should.to_s = '[1, 6, 13, 42, 409]'
  end
end
