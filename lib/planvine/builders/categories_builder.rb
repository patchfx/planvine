module Planvine
  class CategoriesBuilder
    def self.build(category, api)
      Category.new(
        photo: category["photo"]["url"],
        slug: category["slug"],
        name: category["name"],
        id: category["id"],
        api: api
      )
    end
  end

  class Category
    def initialize(params)
      @params = params
    end

    def events
      self.class.get("/category/#{id}/events?api_key=#{@api_key}")["data"].map do |event|
        EventsBuilder.build(event)
      end
    end

    def api
      @params.fetch(:api)
    end

    def photo
      @params.fetch(:photo)
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
