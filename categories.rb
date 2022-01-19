require "nokogiri"
require "open-uri"
p "ok"
@doc1=Nokogiri::HTML(URI.open("https://www.rsmaguyane.fr"))
p "ok"
(@doc1.css('[data-toggle="dropdown"]').to_a+@doc1.css('.unstyled').css('a').to_a).to_a.map{|h|h.attributes['href'].value}.each_with_index do |n,i|
p "ok"
url="https://www.rsmaguyane.fr#{n}"
p n
@doc=Nokogiri::HTML(URI.open(url))
description=@doc.css('meta[name=description]')[0].attributes['content'].value
title=@doc.title
Category.find_or_create_by(nb: i, title: title, description: description,url:n)
rescue OpenURI::HTTPError
rescue SocketError

end
