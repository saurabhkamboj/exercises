# Solution by Launch School

 birds = %w(crow finch hawk eagle)

 def types(birds)
   yield(birds)
 end

 types(birds) do |_, _, *raptors|
   puts "Raptors: #{raptors.join(', ')}"
 end
