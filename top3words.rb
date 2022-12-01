string = "In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income."
string.downcase.gsub(/\W/,' ')
array_of_strings = string.split(" ")
@words_by_frequency = {}
array_of_strings.each do |string|
  if @words_by_frequency[string]
    @words_by_frequency[string] += 1
  else
    @words_by_frequency[string] = 1
  end
end
print @words_by_frequency.max_by(3){|k,v| v }
