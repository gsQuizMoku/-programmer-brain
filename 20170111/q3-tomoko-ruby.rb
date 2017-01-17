CARD_NUM = 100

array = Array.new(100,false)

(2..CARD_NUM).each do |i|
    j = i - 1
    while(j < array.length)
      array[j] ^= true
      j += i
    end
end

CARD_NUM.times do |k| puts k + 1 if !array[k] end


