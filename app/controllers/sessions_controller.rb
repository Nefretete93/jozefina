class SessionsController < ApplicationController
	layout 'admin'
	def new
	end

	def create
		@user = User.find_by_name(params[:session][:name])
		if @user && @user.authenticate(params[:session][:password])
			session[:user_id] = @user.id
			redirect_to articles_path, notice: "Jesteś zalogowany jako <#{current_user.name}>"
		else
			redirect_to '/login'
		end
	end
	def destroy
		session[:user_id] = nil
		redirect_to root_path
	end
end
