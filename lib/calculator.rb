class Calculator

  def add(*num)
    result = 0
    for i in 0 ... num.length
      result += num[i].to_i
    end
    result
  end

  def diff(num1, num2, *num)
    result = num1.to_i - num2.to_i
    for i in 0 ... num.length
      result -= num[i].to_i
    end
    result
  end

  def prod(*num)
    result = num[0].to_i
    for i in 1 ... num.length
      result *= num[i].to_i
    end
    result
  end

  def div(*num)
    result = num[0].to_i
    for i in 1 ... num.length
      result /= num[i].to_i
    end
    result
  end
end
