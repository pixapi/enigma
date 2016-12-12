class CharacterMap
  def cipher(rotation)
    characters = []
    characters = characters << ("a".."z").to_a << ("0".."9").to_a << [" ", ".", ","]
    characters = characters.flatten
    encrypted_characters = characters.rotate(rotation)
    map = Hash[characters.zip(encrypted_characters)]
  end
end
