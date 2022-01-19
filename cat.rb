require "nokogiri"
require "open-uri"
1.upto(200).to_a.each do |n|
url="https://www.rsmaguyane.fr/#{n}-faq.html"
p url
@doc=Nokogiri::HTML(URI.open(url))
p @doc.css('.blog')[0].try(:text)
if @doc.css('.blog')[0].try(:text).try(:include?, ("Il n'y a aucun article dans cette catégorie"))
description=@doc.css('meta[name=description]')[0].attributes['content'].value
title=@doc.title
Category.find_or_create_by(nb: n, title: title, description: description)
end
rescue OpenURI::HTTPError

end

