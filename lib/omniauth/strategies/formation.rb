require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class Formation < OmniAuth::Strategies::OAuth2
      # Give your strategy a name.
      option :name, "formation_oauth2"

      CUSTOM_PROVIDER_URL = 'http://localhost:3000'

      # This is where you pass the options you would pass when
      # initializing your consumer from the OAuth gem.
      option :client_options, {
        :site =>  CUSTOM_PROVIDER_URL,
        :authorize_url => "#{CUSTOM_PROVIDER_URL}/auth/formation/authorize",
        :access_token_url => "#{CUSTOM_PROVIDER_URL}/auth/formation/access_token"
      }

      # These are called after authentication has succeeded. If
      # possible, you should try to set the UID without making
      # additional calls (if the user id is returned with the token
      # or as a URI parameter). This may not be possible with all
      # providers.
      uid { raw_info['id'] }

      info do
        {
          :email => raw_info['email']
        }
      end

      extra do
        {
          :first_name => raw_info['extra']['first_name'],
          :last_name  => raw_info['extra']['last_name']
        }
      end

      def raw_info
        @raw_info ||= access_token.get("/auth/formation/user.json?oauth_token=#{
                                       access_token.token}").parsed
      end
    end
  end
end


