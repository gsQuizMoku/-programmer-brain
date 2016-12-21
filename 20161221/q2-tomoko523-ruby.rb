op = ["+","-","/","*",""]
for num in 1000..10000 do
  c = num.to_s
  for j in op do
    for k in op do
      for l in op do
        val = c[3] + j + c[2] + k + c[1] + l + c[0]
        if val.length > 4
          val.tr!("08", "8")
          val.tr!("09", "9")
          if !val.to_s.include?("/0")
            if num == eval(val)
              print(eval(val).to_s.reverse)
            end
          end
        end
      end
    end
  end
end
