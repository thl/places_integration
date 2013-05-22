class PlacesResource < ActiveResource::Base
  case InterfaceUtils::Server.environment
  when InterfaceUtils::Server::DEVELOPMENT
    self.site = 'http://127.0.0.1/'
    headers['Host'] = 'dev-places.thlib.org'
  when InterfaceUtils::Server::STAGING
    self.site = 'http://127.0.0.1/'
    headers['Host'] = 'staging.places.thlib.org'
  when InterfaceUtils::Server::PRODUCTION
    self.site = 'http://127.0.0.1/'
    headers['Host'] = 'places.thlib.org'
  when InterfaceUtils::Server::LOCAL
    self.site = 'http://localhost/places/'
  else
    self.site = 'http://places.thlib.org/'
  end

  self.timeout = 100
  self.format = :xml
end