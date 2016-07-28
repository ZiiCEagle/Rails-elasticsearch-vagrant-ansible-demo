class Article < ActiveRecord::Base
  include Searchable

  validates_presence_of :title, :content
end
