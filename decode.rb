def decode_char(char)
  morse_alphabet = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z'
  }
  morse_alphabet[char]
end

def decode_morse_word(word)
  chars = word.split
  ele = ''

  chars.each { |char| ele += decode_char(char) }

  ele
end

def decode_morise_message(message)
  ele = ''
  message = message.split('   ')
  message.each { |x| ele += "#{decode_morse_word(x)} " }
  ele
end

decode_morise_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
