class Category < ActiveRecord::Base
  has_many :articles
  validates_uniqueness_of :name

  def to_param
    "#{name.parameterize}"
  end
end
