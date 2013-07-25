class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :user
  has_many :pvotes

  def data
    {id: self.id, title: self.title, url: self.url, comments: self.comments.all.count}
  end
end
