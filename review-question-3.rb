# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class
require 'pry'

class User
  attr_reader :name
  attr_accessor :photo

  def initialize(name)
    @name = name
    @photos = []
  end
end

class Photo
  attr_accessor :comments
  attr_reader :user

  def initialize
    @comments = []
  end

  def user=(user)
    @user = user
    user.photos << self
  end

  def make_comment(string)
   @comments << Comment.new(string)
  end
end

class Comment
 @@all
 attr_reader :string

  def initialize(string)
    @string = string
    @@all << self
  end

  def self.all
    @@all
  end
end

binding.pry

photo = Photo.new
user = User.new("Sophie")
photo.user = user
photo.user.name
# => "Sophie"
user.photos
# => [<photo 1>]


photo.comments
# => []

photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
photo.comments
# => [<comment1>]

Comment.all
#=> [<comment1>]
