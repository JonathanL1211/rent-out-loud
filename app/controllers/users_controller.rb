class UsersController < ApplicationController
#ArticlesController is inheriting from a special class called ApplicationController
  before_action :authenticate_user!
  def show

  end

  def edit
  end

  def update
  end

  def destroy
  end

end