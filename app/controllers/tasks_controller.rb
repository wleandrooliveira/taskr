class TasksController < ApplicationController
    def new
        @task = Task.new
    end

    def create
        @task = Task.new(tasks_params)
        if @task.save
            flash[:notice] = "Task was sucessfully created"
            redirect_to tasks_path(@task)
        else
            render 'new'
        end
    end

    def show
        @task = Task.find(params[:id])
    end

    private

    def tasks_params
        params.require(:task).permit(:content)
    end
end