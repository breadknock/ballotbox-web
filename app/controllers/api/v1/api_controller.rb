module Api::V1
  class ApiController < ActionController::Base
    protect_from_forgery with: :null_session
    
    def current_resource_owner
      User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
    end
  end
end