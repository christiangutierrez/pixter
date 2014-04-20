class PostsController < ApplicationController
  def index
    
    @posts = Post.all 
  end
  
  def new
    @post = Post.new
  end
  
  #This is the code that gets run when the create post button is pushed and then redirect them to the posts. 
  def create
    Post.create( post_params )
    redirect_to posts_path 
  end
  
  #Everything underneath this private, is not a regular page.   
  private
    
  def post_params
    params.require(:post).permit(:title, :description, :image, :name)
  end
    
end