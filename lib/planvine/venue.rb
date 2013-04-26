module Planvine
  class Venue
    def initialize(params)
      @params = params
    end

    def uid
      @params.fetch(:uid)
    end

    def name
      @params.fetch(:name)
    end

    def lat
      @params.fetch(:lat)
    end

    def lng
      @params.fetch(:lng)
    end

    def address
      @params.fetch(:address)
    end

    def short_address
      @params.fetch(:short_address)
    end
  end
end
