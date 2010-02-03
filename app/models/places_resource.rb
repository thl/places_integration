class PlacesResource < ActiveResource::Base
  hostname = Socket.gethostname.downcase
  if hostname == 'sds6.itc.virginia.edu'
    self.site = 'http://staging.places.thdl.org/'
  elsif hostname == 'dev.thlib.org'
    self.site = 'http://dev.places.thlib.org/'
  else
    self.site = 'http://places.thlib.org/' # 'http://localhost/trunk/places/'
  end
  self.timeout = 100
end