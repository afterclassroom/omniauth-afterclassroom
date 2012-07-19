require 'omniauth-oauth2'
require 'multi_json'

module OmniAuth
  module Strategies
    class Afterclassroom < OmniAuth::Strategies::OAuth2
      option :name, 'afterclassroom'
      option :client_options, {
        :authorize_path => '/oauth/authorize',#'/oauth/afterclassroom',
        :site => 'http://localhost:3000',
        :request_token_path => "/oauth/token",
      }#https://afterclassroom.com

      

      uid { access_token.params[:user_id] }

      info do
        {
          :name => raw_info['name'],
        }
      end

      extra do
        { :raw_info => raw_info }
      end

      def raw_info
        @raw_info ||= access_token.get('/api/users/me').parsed
#        @raw_info ||= MultiJson.load(access_token.get('/api/users/me').parsed)
      end

      alias :old_request_phase :request_phase






    end
  end
end
