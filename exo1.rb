# 1. Multiples de 3 et 5
# Cédric Villani a besoin d'aide pour son prochain prix Nobel de Mathématiques. Il a besoin de résoudre le problème suivant : Si on liste tous les entiers naturels en dessous de 10 qui sont multiples de 3 ou 5, on obtient 3, 5, 6, et 9. La somme de ces nombres est égale à 23.
# Trouve la somme des multiples de 3 et 5 inférieurs à 1000.
#
# total = 0
# 100.times do |i|
#   if i % 3 == 0 || i % 5 == 0
#     total += i
#   end
# end
# puts total
#
# ALPHABET_SIZE = 26
#
# def caesar_cipher(string)
#   shiftyArray = []
#   charLine = string.chars.map(&:ord)
#
#   shift = 1
#   ALPHABET_SIZE.times do |shift|
#     shiftyArray << charLine.map do |c|
#       ((c + shift) < 123 ? (c + shift) : (c + shift) - 26).chr
#     end.join
#   end
#   shiftyArray
# end
#
# puts caesar_cipher("abcdef")

# def method_name
#
#
# a = [ "a", "b", "c", "d" ]
# a.rotate         #=> ["b", "c", "d", "a"]
# a              #=> ["a", "b", "c", "d"]
# puts a.rotate(2)<< "e"    #=> ["c", "d", "a", "b"]
# a.rotate(0)     #=> ["b", "c", "d", "a"]
#
# end
# method_name()

# def caesar_cipher(string, shift = 1)
#   alphabet  = Array('a'..'z')
#   non_caps  = Hash[alphabet.zip.ord(alphabet.rotate(shift))]
#
#   alphabet = Array('A'..'Z')
#   caps     = Hash[alphabet.zip(alphabet.rotate(shift))]
#
#   encrypter = non_caps.merge(caps)
#
#   string.chars.map { |c| encrypter.fetch(c, c) }
# end
#
# puts caesar_cipher("xyz").join



def chiffre_de_cesar(string, number)
  letters = string.downcase.split("").map!{|n| n.ord}
  # print letters
  new_ascii = letters.map{|x|
    x = x - 97
  if (x+number > 25)
    x = (x + number) % 26
  else
    x = x + number
  end
  }
puts  new_ascii.map{|q| (q+97).chr}.join
end
chiffre_de_cesar("xyz", 2)
