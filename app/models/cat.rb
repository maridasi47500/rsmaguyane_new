class Cat < ApplicationRecord
has_and_belongs_to_many :categories, :join_table => :categhavecats
validates_uniqueness_of :name
def url
"/#{self.id}-#{self.name.parameterize}.html"
end
def self.findbyname(x)
k="%#{x.downcase.gsub(' ','%')}%"
where('lower(name) like ?',k)
end
def name=(x)
write_attribute(:name, x)
end
def name
read_attribute(:name)
end
end
