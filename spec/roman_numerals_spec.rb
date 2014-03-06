require('rspec')
require('roman_numerals')

describe('roman_numerals') do
  it('should return "I" if you input number 1') do
    roman_numerals(1).should(eq("I"))
  end

  it('should return the correct roman numeral for 2 digits') do
    roman_numerals(11).should(eq("XI"))
  end

  it('should return the correct roman numeral for 3 digit numbers') do
    roman_numerals(114).should(eq("CXIV"))
  end

  it('should return the correct roman numeral for 4 digit numbers up to 3999') do
    roman_numerals(1000).should(eq("M"))
  end

  it('should return an error if 0 or over 3999') do
    roman_numerals(4000).should(eq("Not a Roman Numeral!"))
  end
end

describe('reverse_roman') do
  it('should return "1" if user inputs "I"') do
    reverse_roman("I").should(eq(1))
  end

  it('should add or subtract the numerals and return an integer') do
    reverse_roman("XIV").should(eq(14))
  end
end
