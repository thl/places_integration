class FeatureCategoryCount < PlacesResource
  headers['Host'] = PlacesResource.headers['Host'] if !PlacesResource.headers['Host'].blank?
  self.site = "#{self.site.to_s}categories/:category_id/"
  self.element_name = 'count'
end