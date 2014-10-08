class Api::V1::TeachersController < Api::V1::ApiController
  respond_to :json

  def show
    respond_with teacher
  end

  private

  def teacher
    @teacher ||= Teacher.find params[:id]
  end
end
