# caeser_cipher.rb

# function takes a string and a shift factor and returns rotated string

# DONE make z loop to a and Z loop to A
# DONE ignore spaces and punctionation mark
# TODO write tests for code


def caesar_cipher(string_to_shift, shift_factor)
    p string_to_shift
    p shift_factor
    shifted_string = ""

    lowercase = ("a".."z").to_a
    uppercase = ("A".."Z").to_a

    p lowercase
    p uppercase

    string_to_shift.each_char do | char |
        if lowercase.include?(char)
            char_index = lowercase.find_index(char)
            shifted_lowercase = lowercase.rotate(shift_factor)
            char = shifted_lowercase[char_index]
            shifted_string << char
        elsif uppercase.include?(char)
            char_index = uppercase.find_index(char)
            shifted_uppercase = uppercase.rotate(shift_factor)
            char = shifted_uppercase[char_index]
            shifted_string << char
        else
            shifted_string << char
        end
    end
    p shifted_string
end

caesar_cipher("What a string!", 5)
