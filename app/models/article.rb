class Article < ActiveRecord::Base

  has_and_belongs_to_many :tags
  belongs_to :category

  def to_param
    "#{title.parameterize}"
  end  
end
