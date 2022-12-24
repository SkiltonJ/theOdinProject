class Integer
  # 0 => 'a', 1 => 'b', ..., 25 => 'z', 26 => 'a'
  def to_letter
    ('a'.ord + self % 26).chr
  end
end

class String
  # 'A' => '0', 'a' => 0, ..., 'z' => 25
  def to_code
    self.downcase.ord - 'a'.ord
  end
end

def caesar_cipher(string, factor)
  short_string = string.delete('^A-Za-z')
  short_string.each_char.map do |char|
    (char.to_code + factor).to_letter
  end.join
end

puts caesar_cipher("What a string!", 5) #=> "bmfyfxywnsl"
puts caesar_cipher("bmfyfxywnsl", -5)
