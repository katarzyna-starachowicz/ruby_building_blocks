def caesar_cipher(string, shift)
  letters = string.split(//)

  a_z = Hash.new
  number = 1
  Range.new("a", "z").to_a.each do |letter| #create a hash, "a"=>1, "b"=>2 etc (a hole alphabete)
    a_z[letter] = number
    number += 1
  end
  
  a_z_caps = Hash.new
  number = 1
  Range.new("A", "Z").to_a.each do |letter| #create a hash, "A"=>1, "B"=>2 etc (a hole alphabete)
    a_z_caps[letter] = number
    number += 1
  end

  encrypted_string = ""
  letters.each do |letter|
    if a_z.keys.include? letter
      if a_z[letter] + shift <= a_z.length and a_z[letter] + shift > 0
        encrypted_string += a_z.key(a_z[letter] + shift)
      elsif a_z[letter] + shift < 0
        encrypted_string += a_z.key(a_z.length - ((a_z[letter] + shift).abs % a_z.length))
      else
        encrypted_string += a_z.key((a_z[letter] + shift) % a_z.length)
      end
    elsif a_z_caps.keys.include? letter 
      if a_z_caps[letter] + shift <= a_z_caps.length and a_z_caps[letter] + shift > 0
        encrypted_string += a_z_caps.key(a_z_caps[letter] + shift)
      elsif a_z_caps[letter] + shift < 0
        encrypted_string += a_z_caps.key(a_z_caps.length - ((a_z_caps[letter] + shift).abs % a_z_caps.length))
      else
        if (a_z_caps[letter] + shift) % a_z_caps.length != 0
          encrypted_string += a_z_caps.key((a_z_caps[letter] + shift) % a_z_caps.length)
        else
          encrypted_string += a_z_caps.key(a_z_caps[letter] + shift % a_z_caps.length)
        end
      end
    else
      encrypted_string += letter
    end
  end
  encrypted_string
end