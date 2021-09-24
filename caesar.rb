def shift(char, factor)
  # no shift if not letters
  return char unless /[a-zA-Z]/.match?(char)

  normalized = /[A-Z]/.match?(char) ? 65 : 97
  num_of_chars = 26
  codepoint = char.ord

  # ci = (pi + k) % 26
  shifted_codepoint = (codepoint - normalized + factor) % num_of_chars + normalized

  # return back into char
  shifted_codepoint.chr
end

def caesar_cipher(string, shift_factor)
  # convert string to array of chars
  chars_arr = string.chars

  # binding.pry

  # for each characters in array
  # apply shift function -> shiftedChar
  shifted = chars_arr.map { |char| shift(char, shift_factor) }
  # convert into string arr, join and return
  shifted.join
end
