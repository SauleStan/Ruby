# frozen_string_literal: false

# Vigenère cipher encryption and decryption class
class VigenereCipher
  ALPHABET = ('a'..'z').to_a.freeze

  # Encrypts a string
  def encrypt(string, keyword)
    string = string.gsub(/\s+/, '')
    key = make_key(string.length, keyword)
    string.length.times.map do |i|
      p = ALPHABET.find_index(string[i])
      k = ALPHABET.find_index(key[i])
    
      ALPHABET[(p + k) % 26]
    end.join
  end
    
  # Decrypts an encrypted string
  def decrypt(string, keyword)
    key = make_key(string.length, keyword)
    
    string.length.times.map do |i|
      c = ALPHABET.find_index(string[i])
      k = ALPHABET.find_index(key[i])
    
      ALPHABET[(c - k + 26) % 26]
    end.join
  end
    
  # Repeats a word until it matches a certain length
  def make_key(length, key)
    i = 0
    length.times do
      i = 0 if i == key.length
      break if key.length == length
    
      key << key[i]
      i += 1
    end
    
    key
  end
  
end
