class Fibonacci

  def fibonacci_array
    array = [1 , 2]
    i = 0
    loop do
      array << array[i] + array[i+1]
      i += 1
    break if i == 4
    end
    puts array
    return array
  end













end
