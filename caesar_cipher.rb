def caesar_cipher(str, shift)
  encrypted_str = ''

  str.each_char do |c|
    base = c.ord < 91 ? 65 : 97
    if c >= 'a' && c <= 'z' || c >= 'A' && c <= 'Z'
      shifted = (((c.ord - base) + shift) % 26) + base
      encrypted_str += shifted.chr
    else
      encrypted_str += c
    end
  end

  encrypted_str
end

puts caesar_cipher("What a string!", 5)
