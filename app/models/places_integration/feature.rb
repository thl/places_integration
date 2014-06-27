module PlacesIntegration
  class Feature < PlacesResource
    acts_as_active_resource_family_tree
    headers['Host'] = PlacesResource.headers['Host'] if !PlacesResource.headers['Host'].blank?
    
    def ancestors
      self.perspectives.collect{ |p| p.ancestors.collect{ |a| a.id.to_i } }.flatten.uniq.collect{|i| Feature.find(i) }
    end
    
    def self.find_by_geo_code(geo_code_type, geo_code)
      Feature.get("by_geo_code/#{geo_code}", :geo_code_type => geo_code_type)
    end

    # Using nested active resource. This is problematic when caching
    def feature_type_ids
      self.feature_types.collect{|type| type.id.to_i}
    end
    
    def context_feature
      ps = self.perspectives
      per = ps.detect{|p| p.code=='pol.admin.hier'}
      ancestors = per.nil? ? ps.collect(&:ancestors).flatten.size : per.ancestors
      parent = ancestors.detect{|a| a.id != self.id && a.feature_types.detect{|ft| ft.id=='29'}}
      parent = self.parents.first if parent.nil?
      return parent
    end
  end
end