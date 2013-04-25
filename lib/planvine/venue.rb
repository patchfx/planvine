class Planvine
  class Venue
    def initialize(params)
      @params = params
    end

    def uid
      @params.fetch("uid")
    end

    def lat
      @params.fetch("lat")
    end

    def lng
      @params.fetch("lng")
    end

    def short_address
      @params.fetch("short_address")
    end

    def short_date
      @params.fetch("short_date_string")
    end

    def long_date_string
      @params.fetch("long_date_string")
    end

    def venue_id
      @params.fetch("id")
    end
  end
end
