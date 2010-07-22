class Feature < PlacesResource
  headers['Host'] = PlacesResource.headers['Host'] if !PlacesResource.headers['Host'].blank?
end