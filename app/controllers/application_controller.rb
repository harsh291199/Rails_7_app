class ApplicationController < ActionController::Base
  http_basic_authenticate_with name: 'harsh', password: 'harsh', except: [:index, :show]
end
