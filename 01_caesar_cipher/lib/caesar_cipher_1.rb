# For shift no longer than 25
def caesar_cipher(string, shift)
  letters = string.split(//)
  a_z = Range.new("a", "z").to_a.join("") * 2
  a_z_caps = Range.new("A", "Z").to_a.join("") * 2
  encrypted_string = ""
  letters.each do |letter|
    if a_z.include? letter
      index1 = a_z.index(letter)
      index2 = a_z[index1 + 1..-1].index(letter) + index1 + 1
      if shift > 0
        encrypted_string += a_z[index1 + shift] 
      else
        encrypted_string += a_z[index2 + shift]
      end
    elsif a_z_caps.include? letter 
      index1 = a_z_caps.index(letter)
      index2 = a_z_caps[index1 + 1..-1].index(letter) + index1 + 1
      if shift > 0
        encrypted_string += a_z_caps[index1 + shift] 
      else
        encrypted_string += a_z_caps[index2 + shift]
      end
    else
      encrypted_string += letter
    end
  end
  encrypted_string
end