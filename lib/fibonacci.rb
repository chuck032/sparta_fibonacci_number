class Fibonacci

  attr_accessor :fibonacci_array

  def initialize
    @fibonacci_array = [1, 2]
  end

  def create_fibonacci_array(num)
    i = 0
    loop do
      @fibonacci_array << @fibonacci_array[i] + @fibonacci_array[i+1]
      i += 1
    break if i == num
    end
    # puts @fibonacci_array
  end

  def even
    @even_array = @fibonacci_array.select(&:even?)
    # puts @even_array
    return @even_array
  end

  def sum
    @even_array.inject(0, :+)
  end

  def less_4_mill
    i = 0
    loop do
      if @fibonacci_array[i+1] > 400000
        @fibonacci_array = @fibonacci_array[0..-2]
      else
        @fibonacci_array << @fibonacci_array[i] + @fibonacci_array[i+1]
        i += 1
        next
      end
    break
    end
    # puts @fibonacci_array
  end







end
