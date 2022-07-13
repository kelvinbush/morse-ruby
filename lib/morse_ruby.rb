def decode(str)
  morse_hash = { '.-': 'a', '-...': 'b', '-.-.': 'c', '-..': 'd', '.': 'e', '..-.': 'f', '--.': 'g', '....': 'h',
                 '..': 'i', '.---': 'j', '-.-': 'k', '.-..': 'l', '--': 'm', '-.': 'n', '---': 'o', '.--.': 'p',
                 '--.-': 'q', '.-.': 'r', '...': 's', '-': 't', '..-': 'u', '...-': 'v', '.--': 'w', '-..-': 'x',
                 '-.--': 'y', '--..': 'z' }
  delimiters = ['  ']
  words = str.split(Regexp.union(delimiters))

  result = ''
  words.each do |word|
    word = word.split(' ')
    word.each { |symbol| result += morse_hash[:"#{symbol}"] }
    result += ' '
  end

  puts(result)
end

decode('      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
