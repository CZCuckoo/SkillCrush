class Blog
  @@all_blog_posts = []

  def all_blog_posts(new_blog_post)
  @@all_blog_posts << new_blog_post
  end

  def publish
  @@all_blog_posts.each do |post|
  puts post.title
  puts post.content
  puts post.author
  end
  end

end

class BlogPost < Blog
  def self.create_post 
  post = self.new
  puts "Title: "
  post.title = gets.chomp
  puts "Content: "
  post.content = gets.chomp
  post.publish_date = Time.now()
  puts "Author: "
  post.author = gets.chomp
  post.save

  puts "Do you want to create another blog post?"
  answer = gets.chomp
  answer = answer.downcase
  if answer == 'y'
  create_post
  elsif answer == 'n'
  return
  end
  end

  def save
  BlogPost.all_blog_posts(self)
  end
end

blog = Blog.new
blog.all_blog_posts(BlogPost)
blog.publish
