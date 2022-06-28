class TodosController < ApplicationController
  def index
    render 'todos/index'
  end
  def create
    todo_text = params[:todo_text]
    due_date = params[:due_date]
    Todo.create!(
      todo_text: todo_text,
      due_date: due_date,
      completed: false,
    )
    redirect_to "/"
  end
  def complete
    @todos = Todo.find(params[:id])
    @todos[:completed] = true
    if @todos.save      
      redirect_to "/"
    end
  end
  def delete
    @todos = Todo.find(params[:id])
    if @todos.destroy      
      redirect_to "/"
    end
  end
end
