# frozen_string_literal: true

class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @todos = Todo.where(user_id: current_user.id)
  end
end
