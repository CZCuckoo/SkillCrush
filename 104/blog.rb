class Blog
  # Creating an empty array to add posts to, as well as setting a variable called num to zero, so I can add things to it
  @@all_blog_posts = []
  @@num_blog_posts = 0

# essentially Blog.all = the array containing all posts. At the start, it is empty.
  def self.all
    @@all_blog_posts
  end

# Creating a .add method, so that we can add things to the array.
  def self.add(post)
    # adds whatever is AFTER the .add method to the array
    @@all_blog_posts << post
    # increments the counter in num_blog_posts by 1
    @@num_blog_posts += 1
  end

# displays everything in the array all_blog_posts if I want.
  def puts_blog
    puts @@all_blog_posts
  end

# Takes everything in the all_blog_posts array, and puts the requisite info
  def self.publish
    @@all_blog_posts.each do |post|
      puts "Title: #{post.title}"
      puts "Body: #{post.content}"
      puts "Publish Date: #{post.publish_date}"
    end
  end

end

class BlogPost < Blog

# Blogpost.create. Runs this when .create method is called.
  def self.create
    # creates varuable post, which is essentially blogpost.new
    post = new
    # sets attributes .title .author .content .publish_date
    puts "What is the title of your post?"
    post.title = gets.chomp
    puts "Who is the author of this post?"
    post.author = gets.chomp
    puts "What is your content?"
    post.content = gets.chomp
    post.publish_date = Time.now
    # calls method .save, defined below, which adds it to the empty array above.
    post.save
    puts "Do you want to post another? Y/N"
    if gets.chomp.downcase == "y"
      # if y, does blogpost.create AGAIN
      create
    else
      # otherwise, makes a variable called posts, and sets it equal to everything (not in an array) in blogposts
      # I only did this so that you can .inspect it
      posts = BlogPost.all
      # I just thought it would be neat to tell people how many posts they created
      puts "You have added #{@@num_blog_posts} new posts."
      # .inspects the variable which is equal to BlogPost.all
      puts posts.inspect
    end
  end

  attr_accessor :title, :content, :publish_date, :author

# Takes what happened in BlogPost.new, and uses the method .add defined in blog
  def save
    BlogPost.add(self)
  end


end

# calls the .create method defined in blogpost to start the process
BlogPost.create
# calls the .publish method in Blog, which was created to puts the title etc.
Blog.publish
