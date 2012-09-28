class Calculator

  def add(*num)
    result = 0
    for i in 0 ... num.length
      result += num[i].to_i
    end
    result
  end
end
