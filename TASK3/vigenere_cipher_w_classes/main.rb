#!/usr/bin/env ruby
# frozen_string_literal: false

require_relative 'vigenere_cipher'

puts('enter text to encrypt: ')
to_encrypt = gets.chomp
puts('enter the shift keyword: ')
keyword = gets.chomp

vigenere = VigenereCipher.new
encrypted = vigenere.encrypt(to_encrypt, keyword)
decrypted = vigenere.decrypt(encrypted, keyword)

puts("Original: #{to_encrypt}")
puts("Encrypted: #{encrypted}")
puts("Decrypted: #{decrypted}")
