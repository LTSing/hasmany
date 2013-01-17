class Post < ActiveRecord::Base
  attr_accessible :content, :title

  
  validates :title, :presence => true,
                    :length => { :minimum => 2 }

  has_many :comments
  has_and_belongs_to_many :tags
  belongs_to :user

  #CONFUSED !!!!!!!!!!!
  # definition of method tag! 
  # which has been used in posts_controller's create definition
  def tag!(tags)
		tags = tags.split(" ").map do |tag|
			Tag.find_or_create_by_name(tag)
		end
		self.tags << tags
	end

end



