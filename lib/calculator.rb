class Calculator

  def add(*num)
    result = 0
    neg = []
    for i in 0 ... num.length
      if num[i].to_i < 0
        neg << num[i]
      else
        result += num[i].to_i
      end
    end

    if neg != []
      neg
      raise(StandardError, "negatives not allowed, #{neg}")
    else
      result
    end
  end

  def diff(num1, num2, *num)
    neg = []

    if num1.to_i < 0
      neg << num1.to_i
    end

    if num2.to_i < 0
      neg << num2.to_i
    end

    result = num1.to_i - num2.to_i unless neg != []

    for i in 0 ... num.length
      if num[i].to_i < 0
        neg << num[i]
      else
        result -= num[i].to_i
      end
    end

    if neg != []
      puts neg
      raise(StandardError, "negatives not allowed, #{neg}")
    else
      result
    end

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