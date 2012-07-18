require 'omniauth-oauth'
require 'multi_json'

module OmniAuth
  module Strategies
    class Afterclassroom < OmniAuth::Strategies::OAuth
      option :name, 'afterclassroom'
      option :client_options, {:authorize_path => '/oauth/authenticate',
                               :site => 'https://afterclassroom.com'}

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
        @raw_info ||= access_token.get('/api/user').parsed
      end

    end
  end
end
