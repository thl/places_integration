class Feature < PlacesResource
  headers['Host'] = PlacesResource.headers['Host'] if !PlacesResource.headers['Host'].blank?
  
  def self.find_by_geo_code(geo_code_type, geo_code)
    Feature.get("by_geo_code/#{geo_code}", :geo_code_type => geo_code_type)
  end
  
  def feature_type_ids
    if self.feature_type.instance_of? Array
      return self.feature_type.collect{|type| type.id.to_i }
    else
      return [self.feature_type.id.to_i]
    end
  end
end