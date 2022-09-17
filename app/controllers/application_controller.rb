class ApplicationController < ActionController::Base
  http_basic_authenticate_with name: 'harsh', password: 'harsh', except: [:index, :show]
  before_action :turbo_frame_request_variant
  
  private
  
  def turbo_frame_request_variant
    request.variant = :turbo_frame if turbo_frame_request?
  end
end
