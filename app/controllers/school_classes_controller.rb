class SchoolClassesController < ApplicationController
    def index
        @school_classes = SchoolClass.all
    end

    def new
        @school_class = SchoolClass.new
    end

    def show
        find_params
    end

    def create
        @school_class = SchoolClass.create(post_params)
        redirect_to school_class_path(@school_class)
    end

    def edit
        find_params
    end

    def update
        find_params
        @school_class.update(post_params)
        redirect_to school_class_path(@school_class)
    end

    private

    def post_params
        params.require(:school_class).permit("title", "room_number")
    end

    def find_params
        @school_class = SchoolClass.find(params[:id])
    end
end
