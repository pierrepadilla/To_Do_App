class TodoController < ApplicationController
    def show
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
        end
    end
    def index
    end
end
