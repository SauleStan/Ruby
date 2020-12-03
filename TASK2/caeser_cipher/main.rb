#!/usr/bin/env ruby
# frozen_string_literal: true

ALPHABET = ('a'...'z').to_a.join

# function to encrypt provided string with provided shift
def encrypt(string, shift)
  string.tr(ALPHABET, shifted_alphabet(shift))
end

# function to decrypt provided string with provided shift
def decrypt(string, shift)
  string.tr(shifted_alphabet(shift), ALPHABET)
end

# function to shift the alphabet for encryption
def shifted_alphabet(shift)
  i = shift % ALPHABET.size
  ALPHABET[i..-1] + ALPHABET[0...i]
end

puts('enter text to encrypt: ')
to_encrypt = gets.chomp
puts('enter the shift key: ')
shift = gets.chomp.to_i

encrypted = encrypt(to_encrypt, shift)
puts("encrypted: #{encrypted}")

decrypted = decrypt(encrypted, shift)
puts("decrypted: #{decrypted}")
