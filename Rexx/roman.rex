/* cerner_2^5_2017 */
input_number = ARG(1)

roman_numerals.1 = 1000
roman_numerals.2 = 500
roman_numerals.3 = 100
roman_numerals.4 = 50
roman_numerals.5 = 10
roman_numerals.6 = 5
roman_numerals.7 = 1

roman_alphabets.1 = "M"
roman_alphabets.2 = "D"
roman_alphabets.3 = "C"
roman_alphabets.4 = "L"
roman_alphabets.5 = "X"
roman_alphabets.6 = "V"
roman_alphabets.7 = "I"

roman = ""

do i=1 to 7 by 1
    numerator = input_number % roman_numerals.i
    do j=1 to numerator by 1
        roman = roman||roman_alphabets.i
    end
    input_number = input_number // roman_numerals.i;
end

say 'roman number is: ' roman