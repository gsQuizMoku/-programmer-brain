# OPER = ["+", "-", "*", "/", ""]
OPER = ["*", ""]

i = 1000

while i < 10000
  c = i.to_s
  2.times do |j|
    2.times do |k|
      2.times do |l|
        val = c[3] + OPER[j] + c[2] + OPER[k] + c[1] + OPER[l] + c[0]
        if (val.length > 4)
          val.tr!("08","8")
          val.tr!("09","9")
          begin
            if (i == eval(val))
              puts "#{val} = #{i}"
            end
          rescue
            next
          end
        end
      end
    end
  end
  i += 1
end