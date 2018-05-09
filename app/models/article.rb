 class Article < ApplicationRecord
  
  has_many :pages 
  has_many :comments
  has_many :article_edits
  has_many :admin_users, :through=> :article_edits 

  scope :visible, lambda { where(:visible => true)}
  scope :invisible, lambda {where(:visible => false)}
  scope :sorted, lambda {order("position ASC")}
  scope :newest_first, lambda {order("created_at DESC")}
  scope :search, lambda { |query| where(["title LIKE ?", "%#{query}%"])}

  validates_presence_of :title 
end
