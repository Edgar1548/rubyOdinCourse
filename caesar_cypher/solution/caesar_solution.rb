def shift(ascii_integer, low)
    ascii_integer = (ascii_integer) % 26 + low
    ascii_char = ascii_integer.chr 
    ascii_char
end

def caesar_cipher(string, shift)
    res = ""
    string.each_char do |character|
        if !('a'..'z').include?(character) && !('A'..'Z').include?(character) then 
            res += character
            next
        end
        ascii_integer = character.ord
        if (character.ord <= 90) then
            ascii_char = shift(ascii_integer - 65 + shift, 65)
        else
            ascii_char = shift(ascii_integer - 97 + shift, 97)
        end
        res += ascii_char
    end
    res
end