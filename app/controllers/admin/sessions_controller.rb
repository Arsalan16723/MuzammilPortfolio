class Admin::SessionsController < Admin::ApplicationController
  layout 'admin/login'

  def new
  end

  def create
  	user = User.authenticaiton(params[:email], params[:password])
	if user
		session[:user_id] = user.id
		redirect_to admin_posts_path, :notice => "Logged In"
	else
		flash.now.alert = "Invalid email or Password"
		render 'new'
	end		

  end
end
