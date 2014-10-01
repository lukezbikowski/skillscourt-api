class Api::V1::StudentsController < ApplicationController
  respond_to :json
  
  def index
    respond_with students
  end
  
  def show
    respond_with student
  end
  
  private
  
  def students
    @students ||= Student.all
  end
  
  def student
    @student ||= Student.find params[:id]
  end
end
