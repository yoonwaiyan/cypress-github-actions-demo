# frozen_string_literal: true

class TodosController < ApplicationController
  before_action :find_todo, except: %i[index create]

  def index
    render json: Todo.where(user_id: params[:uid])
  end

  def create
    @todo = Todo.new title: params[:title]
    @todo.user = User.find params[:uid]
    if @todo.save
      render json: @todo
    else
      render status: 500, json: { error: 'Todo invalid' }
    end
  end

  def show
    render json: @todo
  end

  def update
    if @todo.update params.permit :title, :completed
      render json: @todo
    else
      render status: 500, json: { error: 'Something went wrong.' }
    end
  end

  def destroy
    if @todo.destroy
      render json: { destroyed: true }
    else
      render status: 500, json: { destroyed: false }
    end
  end

  private

  def find_todo
    @todo = Todo.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render status: 404, json: { error: 'Not found' }
  end
end
