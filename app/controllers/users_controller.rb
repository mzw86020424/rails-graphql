class UsersController < ApplicationController
  skip_forgery_protection

  def index
    users = User.all
    render json: users
  end

  def create
    user = User.create(name: params["name"], age: params["age"])
    render json: user
  end

  def show
    user = User.find(params[:id])
    render json: user
  end
end
