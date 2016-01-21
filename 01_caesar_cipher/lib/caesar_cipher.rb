def caesar_cipher(string, shift)
    letters = string.split("")
    a_z = ('a'..'z').to_a
    a_z_caps = ('A'..'Z').to_a
  
  shift %= 26 if shift > 26 || shift < 0
    
    letters.map! do |letter| 
    if a_z.include?(letter)
      new_index = a_z.index(letter) + shift
      new_index = (26 - new_index).abs if new_index > 25  
      letter = a_z[new_index]
    elsif a_z_caps.include?(letter)
      new_index = a_z_caps.index(letter) + shift
      new_index = (26 - new_index).abs if new_index > 25
      letter = a_z_caps[new_index]
    else
      letter
    end
  end
    letters.join("")
end