def xor?(n1, n2)
  return true if n1 && !n2
  return true if n2 && !n1
  false
end

xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false
