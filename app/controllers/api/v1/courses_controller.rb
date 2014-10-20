class Api::V1::CoursesController < Api::V1::ApiController
  respond_to :json

  def index
    respond_with courses
  end

  def show
    respond_with course
  end

  private

  def courses
    @courses ||= Course.all
  end

  def course
    @course ||= Course.find params[:id]
  end
end
