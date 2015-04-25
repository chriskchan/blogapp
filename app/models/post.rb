class Post < ActiveRecord::Base
  validates :title, :body, presence: true
  
  def hello
    puts "hello world!"
  end
  
  def get_next_post
    next_id = self.id + 1
    Post.find_by_id(next_id)
  end
  
  #class methods!
  def self.goodbye
    puts "goodbye!"
  end
  
  def self.alphabetically_ordered
    Post.order(:title).limit(5)
  end
  
end
