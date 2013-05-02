module Planvine
  class PlanvineAPI
    include HTTParty
    format :json
    base_uri 'http://planvine.com/api/v1'

    def initialize(api_key)
      @api_key = api_key
    end

    def events
      self.class.get("/event?api_key=#{@api_key}")["data"].map do |event|
        EventsBuilder.build(event)
      end
    end

    def categories
      categories = self.class.get("/category?api_key=#{@api_key}")
      categories["data"].map do |category|
        CategoriesBuilder.build(category, self)
      end
    end

    def category_events(id)
      self.class.get("/category/#{id}/events?api_key=#{@api_key}")["data"]
    end

    def venue(id)
      Venue.new(self.class.get("/venue/#{id}?api_key=#{@api_key}")["data"])
    end
  end
end
