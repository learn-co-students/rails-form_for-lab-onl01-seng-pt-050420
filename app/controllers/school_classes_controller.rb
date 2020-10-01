class SchoolClassesController < ApplicationController

    def index
        @school_classes = SchoolClass.all 
    end

    def new
        @school_class = SchoolClass.new
    end
    
    def create
        @school_class = SchoolClass.new(school_class_params)
        @school_class.save
        redirect_to school_class_path(@school_class)
    end

    def show
        find_school_class_params
    end

    def edit
        find_school_class_params
    end

    def update
        find_school_class_params
        @school_class = SchoolClass.update(school_class_params)
        redirect_to school_class_path(@school_class)
    end

    private

    def school_class_params
        params.require(:school_class).permit(:title, :room_number)
    end

    def find_school_class_params
        @school_class = SchoolClass.find(params[:id])
    end

end