class Blog::CategoriesController < Blog::ApplicationController
  def show
  	@category = Category.find(params[:id])
  	@categories = Category.all
  	@posts = @category.posts
  end
end
