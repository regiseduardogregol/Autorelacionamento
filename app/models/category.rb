class Category < ActiveRecord::Base
  attr_accessible :category_id, :name
  #has_many :children, :class_name => "Category", :foreign_key => "father_id"
  #belongs_to :father, :class_name => "Category"

  has_many :categories
  belongs_to :category

  validates_presence_of :name
end

