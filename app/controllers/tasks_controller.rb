class TasksController < ApplicationController
    def create
        @employee = Employee.find(params[:employee_id])
        @task = @employee.tasks.create(task_params)
        redirect_to employee_path(@employee)
    end

    def destroy
        @employee = Employee.find(params[:employee_id])
        @task = @employee.tasks.find(params[:id])
        @task.destroy
        redirect_to employee_path(@employee)
      end

    private
    def task_params
        params.require(:task).permit(:title, :reward_point)
    end
end
