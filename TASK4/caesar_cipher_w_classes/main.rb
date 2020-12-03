#!/usr/bin/env ruby
# frozen_string_literal: true

require_relative 'caesar_cipher'

puts('enter text to encrypt: ')
to_encrypt = gets.chomp
puts('enter the shift key: ')
shift = gets.chomp.to_i

caesar = Caesar.new(shift)

encrypted = caesar.encrypt(to_encrypt)
puts("encrypted: #{encrypted}")

decrypted = caesar.decrypt(encrypted)
puts("decrypted: #{decrypted}")
