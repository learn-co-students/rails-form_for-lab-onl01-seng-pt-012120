class SchoolClassesController < ApplicationController
  def index
    @school_classes = School_class.all
  end

  def show
    @school_class = School_class.new
  end

  def edit
    @school_class = School_class.find(params[:id])
  end

  def post_params
    params.require(:school_class).permit(:title, :room_number)
  end

  def create
    @school_class = School_class.new(school_class_params(:title, :room_number))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def update
    @school_class = School_class.find(params[:id])
    @school_class.update(schoolclass_params(:title))
    redirect_to school_class_path(@school_class)
  end

  private

  def post_params(*args)
    params.require(:school_class).permit(*args)
  end

end
