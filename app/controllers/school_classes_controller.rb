class SchoolClassesController < ApplicationController

    def new
      @school_class = SchoolClass.new
    end
  
    def show
      set_school_class
    end
  
    def create
      @school_class = SchoolClass.create!(s_c_params)
      redirect_to school_class_path(@school_class)
    end
  
    def update
      set_school_class
      @school_class.update(s_c_params)
      redirect_to school_class_path(@school_class)
    end
  
    def edit
      set_school_class
    end
  
    private
  
    def set_school_class
      @school_class = SchoolClass.find(params[:id])
    end
  
    def s_c_params
      params.require(:school_class).permit(:title,:room_number)
    end
  
  end