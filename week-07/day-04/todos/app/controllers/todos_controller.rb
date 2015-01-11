class TodosController < ApplicationController
  before_action :find_todo, only: [:show, :edit, :update, :destroy]

  def index
    @todos = Todo.all

    respond_to do |format|
      format.html
      format.json { render json: @todos }
    end

  end

  def show
    respond_to do |format|
      format.html
      format.json { render json: @todo }
    end
  end

  def new
    @todo = Todo.new
  end

  def edit
  end

  def create
    @todo = Todo.create(todo_params)
    redirect_to @todo
  end

  def update
    @todo.update(todo_params)
    redirect_to @todo
  end

  def destroy
    @todo.destroy
    respond_to do |format|
      format.html { redirect_to root_path }
      format.json { render json: {status: "ok"} }
    end
  end

  private

  def find_todo
    @todo = Todo.find(params[:id])
  end

  def todo_params
    params.require(:todo).permit(:text, :notes, :completed)
  end
end
