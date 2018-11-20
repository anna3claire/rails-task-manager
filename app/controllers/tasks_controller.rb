class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @id = Task.find(params[:id])
  end

  def new
    @tasks = Task.new
  end

  def create
    @tasks = Task.new(task_params[:id])
    @tasks.save
    redirect_to index_path(index)
  end

  def edit
    @tasks = Task.find(params[:id])
  end

  def update
    @tasks = Task.find(params[:id])
    @tasks.update(param)
  end

  def destroy
    @tasks = Task.find(params[:id])
    @tasks.destroy
    redirect_to index_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
