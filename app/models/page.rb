class Page < ApplicationRecord
  belongs_to :article  #{ :optional => false } can set it true if u want to save page with out article. 
  has_and_belongs_to_many :admin_users
end
