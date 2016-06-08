#For all the code in /pages
#back-end code
class PagesController < ApplicationController
  def home
  end

  def index
  end

  def profile
    if (User.find_by_username(params[:id]))
      @username = params[:id]
    else
      redirect_to root_path, :notice => "User not found!"
    end
  end

  def explore
  end
end
