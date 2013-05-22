module Planvine
  class CategoriesBuilder
    def self.build(category, api)
      Category.new(
        :photo => (category["photo"] ? category["photo"]["url"] : ''),
        :slug => category["slug"],
        :name => category["name"],
        :id => category["id"],
        :api => api
      )
    end
  end

  class Category
    def initialize(params)
      @params = params
    end

    def events
      return [] if api.category_events(id).nil?
      api.category_events(id).map do |events|
        return [] if events.nil?
        events.map do |event|
          full_event = api.event(event["id"])
          EventsBuilder.build(full_event)
        end
      end.flatten
    end

    def api
      @params.fetch(:api)
    end

    def photo
      @params.fetch(:photo, nil)
    end

    def slug
      @params.fetch(:slug)
    end

    def name
      @params.fetch(:name)
    end

    def id
      @params.fetch(:id)
    end
  end
end
