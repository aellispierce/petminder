module Api::V1
  class TasksController < ApiController

    def index

    end

    def new

    end

    def create

    end

    def edit

    end

    def show
      @task = Task.find(params[:id])
    end

    def update

    end

    def destroy

    end

  end
end
