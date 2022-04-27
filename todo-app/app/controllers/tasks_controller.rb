class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end
end

def new
  @task = Task.new
end

def create
  @task = Task.new(task_params）
  if @task.save
    redirect_to tasks_path　#セーブできたらindexページに行く
  else
    render 'new'　#できなかったらnewページのまま
  end
end

private
def task_params
  　　#モデル作成時に作ったやつ
      params.require(:task).permit(:title, :body)
    end
  end