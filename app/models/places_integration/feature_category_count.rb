module PlacesIntegration
  class FeatureCategoryCount < ActiveResource::Base
    self.site = "#{PlacesResource.site.to_s}categories/:category_id/"
    self.element_name = 'count'
    self.format = :xml
  end
end