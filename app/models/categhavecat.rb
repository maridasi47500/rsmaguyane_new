class Categhavecat < ApplicationRecord
belongs_to :category
belongs_to :cat
validates_uniqueness_of :category_id, :scope => :cat_id
end
