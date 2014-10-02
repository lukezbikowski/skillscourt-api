class Api::V1::CoursesController < Api::V1::ApiController
  respond_to :json

  def show
    respond_with course
  end

  private

  def course
    @course ||= Course.find params[:id]
  end
end
