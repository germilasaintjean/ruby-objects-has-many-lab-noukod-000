class Author

  attr_accessor :name, :posts

  @posts = []
  def initialize(name)
    @name = name
    @posts = []
   end

   def add_post(post)
     @posts << post
     post.genre=self
     @@posts << post
   end

   def add_post_by_name(name)
    post = Post.new(name)
    posts << post
    @@posts << post
    post.genre = self
   end

   def self.post_count
     @@posts.count
   end

 end
