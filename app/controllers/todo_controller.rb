class TodoController < ApplicationController
    def show
       @todo=Todo.find_by_id(params[:id])
        @todo_description="hello"
        @todo_pomodoro_estimate=6
        todo_id=params[:id]
        if todo_id=='1'
            @todo_description="shop"
            @todo_pomodoro_estimate = "60"
        elsif todo_id=='2'
            @todo_description="walking"
            @todo_pomodoro_estimate = "30"
        elsif todo_id=='3'
            @todo_description="homework"
            @todo_pomodoro_estimate = "80"
         elsif todo_id=='4'
            @todo_description="eat lunch"
            @todo_pomodoro_estimate = "45"
        end
    end
   
    def index
        @todos = Todo.all
    end
   
    def new
    end
    
    def create
        t=Todo.new
        t.description=params['description']
        t.pomodoro_estimate=params['pomodoro_estimate']
        t.save
        redirect_to "/todo/show/#{t.id}"
    end
   
    def edit
        @todo = Todo.find_by_id(params[:id])
    end
   
    def update
     t = Todo.find_by_id(params['id'])
     t.description = params['description']
     t.pomodoro_estimate = params['pomodoro_estimate']
     t.save
     redirect_to "/todo/show/#{t.id}"
    end
    def destroy
     t = Todo.find_by_id(params[:id])
     t.destroy
     redirect_to "/todo/index"
    end
end

