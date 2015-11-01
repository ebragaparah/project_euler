def sum_of_multiples_below(number):
  sum = 0
  numbers = [number for number in range(1, number) if number % 3 == 0 or number % 5 == 0]
  sum = reduce(lambda x, y: x + y, numbers)
  return sum
