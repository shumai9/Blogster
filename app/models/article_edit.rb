class ArticleEdit < ApplicationRecord
  belongs_to :admin_user
  belongs_to :article
end
