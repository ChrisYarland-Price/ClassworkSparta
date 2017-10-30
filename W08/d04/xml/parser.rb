require "nokogiri"
doc = Nokogiri::XML(open('./xml.xml'))

puts doc.search('price')

doc.search('food').each do |i|
  puts i.
end