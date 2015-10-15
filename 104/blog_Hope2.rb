class Blog
  @@all_blog_posts = []
  @@num_blog_posts = 0

  def self.all
    @@all_blog_posts
  end

  def self.add (post)
    @@all_blog_posts << post
    @@num_blog_posts = @@num_blog_posts +1
  end

  def self.publish
    @@all_blog_posts.each do |post|
    print "#{:title}, by #{:author}, #{:time_stamp}"
    print :post
    end
  end
end

class Blogpost < Blog
  attr_accessor :title, :author, :post, :time_stamp #added :time_stamp here so that you can use it as a method below

def self.create
  post = new
  puts "Do you want to post? (yes/no)"
  #for some reason, this needed a .chomp. I guess the auto linebreak confused the "yes" answer
  answer= gets.chomp.downcase
  if answer == "yes"
    puts "Please title your post:"
    post.title = gets.chomp
    puts "Your name:"
    post.author = gets.chomp
    puts "Blog post:"
    post.post = gets.chomp
    post.time_stamp = Time.new #changed this to post.time_stamp instead of time.time_stamp, since time wasn't defined anywhere. post=new means you are using the methods .title etc. on "post", so you can't use time.time_stamp
    #changed these to post.author, post.title etc. becuase author title etc. aren't defined as variables anywhere. .title .author etc. are methods, not variables.
    print "#{post.author} wrote '#{post.title}' at #{post.time_stamp}\n"  #added some \n for formatting
    print "#{post.post}\n"
    print "This is post number: #{@@num_blog_posts}"
  else
    print "See you next time\n"
  end
end
end

#a few other things. Currently, you aren't using the publish method, which might clear up some of the stuff at the end of your if statment
#You also aren't adding them to the array you have up there, @@all_blog_posts. Other than the few bugs, you were 90% there, so these are just things to carry it over the finish line.


Blogpost.create
