def caesar_cipher (text, shift_number)

  array_text= text.split(" ")

  changed_words = array_text.map do |word|
    text_numbers = word.codepoints

    changed_number = text_numbers.map { |number|
      if (97..122).include?(number)
        ((number - 97 + shift_number) % 26 + 97).chr
      elsif (65..90).include?(number)
        ((number - 65 + shift_number) % 26 + 65).chr
      else
        number.chr
      end
    }
    changed_number.join
  end

  changed_words.join(" ")
end

puts caesar_cipher("No Not the Beezz", 6)
