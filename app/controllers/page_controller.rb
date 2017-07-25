class PageController < ApplicationController
  before_action :authenticate_user!, except: [:create, :new, :show]

  def index
    render json: { message: 'message' }
  end
end
