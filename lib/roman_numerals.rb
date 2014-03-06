def roman_numerals(num)
  ones = {0 => "", 1 => "I", 2 => "II", 3 => "III", 4 => "IV", 5 => "V", 6 => "VI", 7 => "VII", 8 =>     "VIII", 9 => "IX"}
              
  tens = {0 => "", 1 => "X", 2 => "XX", 3 => "XXX", 4 => "IL", 5 => "L", 6 => "LI", 7 => "LII", 8 =>     "LIII", 9 => "IC"}
              
  hundreds = {0 => "", 1 => "C", 2 => "CC", 3 => "CCC", 4 => "ID", 
             5 => "D", 6 => "DI", 7 => "DII", 8 => "DIII",  9 => "IM"}

  thousands = {0 => "", 1 => "M", 2 => "MM", 3 => "MMM"}


  if num == 0 || num > 3999
    romaned = "Not a Roman Numeral!"
  else
    num_string = num.to_s
    if (num_string.length == 1)
      romaned = ones[num]
    elsif (num_string.length == 2)
      romaned = tens[num_string[0].to_i] + ones[num_string[1].to_i]
    elsif (num_string.length == 3)
      romaned = hundreds[num_string[0].to_i] + tens[num_string[1].to_i] + ones[num_string[2].to_i]
    else
      romaned = thousands[num_string[0].to_i] + hundreds[num_string[1].to_i] + tens[num_string[2].to_i] + ones[num_string[3].to_i]
    end 
  end
    romaned
end


def reverse_roman(numeral)

  numerals = {"I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000}
  reversed = numeral.upcase.reverse
  numeral_array = reversed.split("")
  total = numerals[numeral_array[0]]
  i = 0

  while i < numeral_array.length do
    if i != (numeral_array.length-1)
      if numerals[numeral_array[i]] > numerals[numeral_array[i+1]]
        total -= numerals[numeral_array[i+1]]
      else 
        total += numerals[numeral_array[i+1]]
      end
      i += 1
    else
      break
    end
  end
  total
end





