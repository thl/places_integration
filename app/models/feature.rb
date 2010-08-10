class Feature < PlacesResource
  headers['Host'] = PlacesResource.headers['Host'] if !PlacesResource.headers['Host'].blank?
  
  def self.find_by_geo_code(geo_code_type, geo_code)
    Feature.get("by_geo_code/#{geo_code}", :geo_code_type => geo_code_type)
  end
end