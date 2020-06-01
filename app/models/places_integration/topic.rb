module PlacesIntegration
  class Topic < PlacesResource
    def self.paginated_features(id, options = {})
      hash = self.get("#{id}", options.reject{|k,v| v.nil?})
      WillPaginate::Collection.create(hash['current_page'], hash['per_page'], hash['total_entries']) do |pager|
        pager.replace(hash['features'])
      end
    end
  end
end