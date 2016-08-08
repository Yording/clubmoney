class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  before_action :api_authenticate,if: :json_request?
  private
  	def json_request?
  		request.format.json?
  	end
  	def api_authenticate
  		if get_token.nil?
  			render json:{error:'Access Token invalid'}
  		else
  			unless get_token.active?
  				render json:{error:'Access Token not active'}
  			else
  				get_token.number_of_requests +=1
  				get_token.save
  			end		
  		end
  	end
  	def get_token
  		@token ||=Token.authenticate(token_param)  		
  	end
  	def token_param
  		request.headers[:token] || params[:token]
  	end
end
