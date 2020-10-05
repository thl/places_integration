module PlacesIntegration
  class PlacesResource < ActiveResource::Base
    case InterfaceUtils::Server.environment
    when InterfaceUtils::Server::DEVELOPMENT
      self.site = "http://dev-places.kmaps.virginia.edu/"
    when InterfaceUtils::Server::STAGING
      self.site = "http://staging-places.kmaps.virginia.edu/"
    when InterfaceUtils::Server::PRODUCTION
      self.site = "http://places.kmaps.virginia.edu/"
    when InterfaceUtils::Server::LOCAL
      self.site = 'http://localhost/shanti/places/'
    else
      self.site = "http://places.kmaps.virginia.edu/"
    end

    self.timeout = 100
    self.format = :xml
  end
end