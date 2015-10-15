class Blog
# I believe an empty array needs [] instead of {}
  @@all_blog_posts = []
  @@num_blog_posts = 0

  def initialize.add (post)
    @@all_blog_posts << post
    @@num_blog_posts = @@num_blog_posts +1
  end

  def self.publish
    @@all_blog_posts.each do |post|
    print "#{:title}, by #{:author}, #{:time_stamp}"
    print :post
    # Any .each do needs an end after it. You were missing it, and just ending the def to self.publish
  end
  end
end

class Blogpost < Blog
  attr_accessor :title, :author, :post

def post(answer)
  # I believe yes needs to be in quote marks, since it's a string
  if answer == "yes"
    new_post = Blogpost.new
    puts "Please title your post:"
    new_post.title = gets.chomp
    puts "Your name:"
    new_post.author = gets.chomp
    puts "Blog post:"
    new_post.post = gets.chomp
    new_post.time_stamp = Time.new
  else
    prints "See you next time"
  end
end
end

puts "Do you want to post?"
answer = gets.downcase
Blogpost.new
