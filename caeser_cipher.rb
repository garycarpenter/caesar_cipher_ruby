# caeser_cipher.rb

# function takes a string and a shift factor and returns rotated string

# TODO make z loop to a and Z loop to A
# TODO ignore spaces and punctionation mark

def caesar_cipher(string_to_shift, shift_factor)
    p string_to_shift
    p shift_factor
    shifted_string = ""
    string_to_shift.each_char do | char |
        char = char.ord + shift_factor
        shifted_string << char
    end
    p shifted_string
end

caesar_cipher("What a string!", 5)
