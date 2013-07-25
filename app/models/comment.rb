class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  has_many :cvotes

  def data
    {id: self.id, comment: self.comment, parent: self.parent}
  end
end
