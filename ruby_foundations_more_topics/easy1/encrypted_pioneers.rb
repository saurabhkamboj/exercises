LETTERS = ('a'..'z').zip(1..26).to_h

encrypted_pioneers = <<~PIONEERS
Nqn Ybirynpr
Tenpr Ubccre
Nqryr Tbyqfgvar
Nyna Ghevat
Puneyrf Onoontr
Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv
Wbua Ngnanfbss
Ybvf Unvog
Pynhqr Funaaba
Fgrir Wbof
Ovyy Tngrf
Gvz Orearef-Yrr
Fgrir Jbmavnx
Xbaenq Mhfr
Fve Nagbal Ubner
Zneiva Zvafxl
Lhxvuveb Zngfhzbgb
Unllvz Fybavzfxv
Tregehqr Oynapu
PIONEERS

def decrypt(string)
  string.chars.map do |char|
    case char
    when 'a'..'m', 'A'..'M' then (char.ord + 13).chr
    when 'n'..'z', 'N'..'Z' then (char.ord - 13).chr
    else char
    end
  end.join
end

# Alternate
def decrypt(string)
  string.chars.map do |char|
    result = case char
    when 'a'..'m', 'A'..'M' then LETTERS.key(LETTERS[char.downcase] + 13)
    when 'n'..'z', 'N'..'Z' then LETTERS.key(LETTERS[char.downcase] - 13)
    else char
    end

    char == char.upcase ? result.upcase : result
  end.join
end

encrypted_pioneers.each_line(chomp: true) do |line|
  puts decrypt(line)
end
