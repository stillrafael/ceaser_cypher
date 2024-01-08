def ceaser_cypher(string, changeFactor)
    encryptedString = string.each_byte.to_a
    decryptedString = encryptedString.map do |key|
        if key < 65 || key > 90 && key < 97 || key > 122
            key
        elsif key+changeFactor > 90 && key < 90 || key+changeFactor > 122 && key < 122  
            (key-26) + changeFactor
        else
            key+changeFactor
        end
    end
    decryptedString.map{|key| key.to_i.chr}.join
end

puts "This is a test string encrypted with 5"
puts ceaser_cypher("This is a test string encrypted with 5", 5)