class Calculator
  def add(num1, num2)
    num1 + num2
  end

  def multiply(num1, num2)
    num1 * num2
  end

  # this method must use rand
  # rand is already tested
  def random_add(num, options = [1,2,3,4,5,6,7,8,9,10])
    num + options.sample
  end
end