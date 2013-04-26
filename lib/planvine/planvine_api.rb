module Planvine
  class PlanvineAPI
    include HTTParty
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
      JSON.parse(categories)["data"].map do |category|
        CategoriesBuilder.build(category, self)
      end
    end

    def category_events(id)
      JSON.parse(self.class.get("/category/#{id}/events?api_key=#{@api_key}"))["data"]
    end
  end
end
