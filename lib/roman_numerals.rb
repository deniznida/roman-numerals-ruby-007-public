# Write your code here.
class Integer

  def to_roman
    num = self
    thousands = (num / 1000)
    hundreds = (num % 1000 / 100)
    tens = (num % 1000 % 100 / 10)
    ones = (num % 1000 % 100 % 10)
    roman = ""
    roman << "M" * thousands
    
    if hundreds < 4
      roman << "C" * hundreds
    else
      if hundreds == 4
        roman << "CD"
      elsif hundreds > 4
        if hundreds < 9
          roman << "D" + "C"*(hundreds-5)
        else
          roman << "CM"
        end
      end
    end

    if tens < 4
      roman << "X" * tens
    else
      if tens == 4
        roman << "XL"
      elsif tens > 4
        if tens < 9
          roman << "L" + "X"*(tens-5)
        else
          roman << "XC"
        end
      end
    end


    if ones < 4
      roman << "I" * ones
    else
      if ones == 4
        roman << "IV"
      elsif ones > 4
        if ones < 9
          roman << "V" + "I"*(ones-5)
        else
          roman << "IX"
        end
      end
    end
  end
end
