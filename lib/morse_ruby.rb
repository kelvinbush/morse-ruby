def decode_char(character)
  morse_hash = { '.-': 'a', '-...': 'b', '-.-.': 'c', '-..': 'd', '.': 'e', '..-.': 'f', '--.': 'g', '....': 'h',
                 '..': 'i', '.---': 'j', '-.-': 'k', '.-..': 'l', '--': 'm', '-.': 'n', '---': 'o', '.--.': 'p',
                 '--.-': 'q', '.-.': 'r', '...': 's', '-': 't', '..-': 'u', '...-': 'v', '.--': 'w', '-..-': 'x',
                 '-.--': 'y', '--..': 'z' }
  morse_hash[:"#{character}"]
end

def decode_word(word)
  result = ''
  word.split.each { |symbol| result += decode_char(symbol) }
  result
end

def decode_morse_code(str)
  result = ''
  str.split(Regexp.union(['  '])).each do |word|
    result += "#{decode_word(word)} "
  end
  puts(result)
end

decode_morse_code('      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
