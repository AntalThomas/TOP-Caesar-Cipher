def caesarShift(string, shift)
  upCase = "ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZ"
  downCase = "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz"
  encodedText = ""
  
  string.each_char do |char|
      if upCase.include?(char)
          encodedText += upCase[upCase.index(char) + shift]

      elsif downCase.include?(char)
          encodedText += downCase[downCase.index(char) + shift]

      else
          encodedText += char
      end
  end
  
  puts encodedText
end

caesarShift("What a string!", 5)