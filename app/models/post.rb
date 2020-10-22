class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :categories

  def categories_attributes=(attrs)
    attrs.values.each do |val|
      # binding.pry
      if val[:name] != ""
        cat = Category.find_or_create_by(name: val[:name]) 
        self.categories << cat
      end

    end
  end
  
end
