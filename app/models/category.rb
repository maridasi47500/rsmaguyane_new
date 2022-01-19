class Category < ApplicationRecord
has_and_belongs_to_many :cats, :join_table => :categhavecats
accepts_nested_attributes_for :cats, allow_destroy: true
attr_accessor :searchword, :searchphrase, :Itemid,:limit,:areas, :ordering
after_initialize :mysearch
def mysearch
self.limit ||= 20
self.searchphrase ||= "all"
self.ordering||= "newest"
self.areas||= []
end
def self.url(x)
find_by(url: x.gsub('http://localhost:3000','')).try(:title) || "lire"
end
def self.byurl(x)
find_by(url: x[:url].gsub('http://localhost:3000','')).try(:title)
end
def self.findbyurl(x)
find_by(url: x[:url].gsub('http://localhost:3000',''))
end
def self.findbyurlstr(x)
find_by(url: x.gsub('http://localhost:3000',''))
end
end
