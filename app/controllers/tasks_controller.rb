class TasksController < ApplicationController
  before_action :set_task, only: [:show, :new, :create, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @tasks = Task.create(task_params)
    redirect_to tasks_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @tasks = Task.find(params[:id])
    @tasks.update(task_params)
    redirect_to task_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
