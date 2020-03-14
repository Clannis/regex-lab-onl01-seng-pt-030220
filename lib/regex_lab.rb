require 'pry'

def starts_with_a_vowel?(word)
  if word.match(/\b[aeiouAEIOU]\w*/)
    return true
  else
    false
  end
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/\bun\w*ing\b/)
end

def words_five_letters_long(text)
  text.scan(/\b[a-zA-Z]{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  if text.match(/\A[A-Z].*[.,?!]\z/)
    true
  else
    false
  end
end

def valid_phone_number?(phone)
  if phone.match(/[0-9]{10}/)
    binding.pry
    true
  elsif phone.match(/\A.(\d{3}).(\d{3}).(\d{4})\z/)
    binding.pry
    true
  elsif phone.match(/\A(\d{3})\s(\d{3})\s(\d{4})\z/)
    binding.pry
    true
  elsif phone.match(/\A.(\d{3}).(\d{7})\z/)
    binding.pry
    true
  else
    binding.pry
    false
  end
end

valid_numbers = ["(800)IloveNY"]
valid_numbers.all? { |number| valid_phone_number?(number) }
