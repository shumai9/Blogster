class AdminUser < ApplicationRecord
  has_and_belongs_to_many :pages
  has_many :article_edits
  has_many :articles, :through => :article_edits
end
=begin
  #self.table_name = "admin_user"
  if we dont folow rails convention we have to tell it or
  config it. change file and class name, useful for legacy code
=end