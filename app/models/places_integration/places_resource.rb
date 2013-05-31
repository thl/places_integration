module PlacesIntegration
  class PlacesResource < ActiveResource::Base
    case InterfaceUtils::Server.environment
    when InterfaceUtils::Server::DEVELOPMENT
      self.site = 'http://127.0.0.1/'
      headers['Host'] = "dev-places.#{InterfaceUtils::Server.get_domain}"
    when InterfaceUtils::Server::STAGING
      self.site = 'http://127.0.0.1/'
      headers['Host'] = "staging.places.#{InterfaceUtils::Server.get_domain}"
    when InterfaceUtils::Server::PRODUCTION
      self.site = 'http://127.0.0.1/'
      headers['Host'] = "places.#{InterfaceUtils::Server.get_domain}"
    when InterfaceUtils::Server::LOCAL
      self.site = 'http://localhost/shanti/places/'
    else
      self.site = "http://places.#{InterfaceUtils::Server.get_domain}/"
    end

    self.timeout = 100
    self.format = :xml
  end
end