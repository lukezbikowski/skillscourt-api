class Api::V1::StudentsController < ApplicationController
  respond_to :json
  
  def index
    @students = Student.all
    respond_with @students
  end

end