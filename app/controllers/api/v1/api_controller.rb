class Api::V1::ApiController < ActionController::Base
  rescue_from ActiveRecord::RecordNotFound do
    head 404, content_type: 'application/json'
  end
end
