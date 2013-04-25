module Planvine
  class EventsBuilder
    def self.build(event)
      Event.new(
        end_date: Date.parse(event["end_date"]),
        title: event["title"],
        url: event["url"],
        photo: event["photo"]["url"],
        start_date: Date.parse(event["start_date"]),
        venue: Venue.new(event["venue"]),
        id: event["id"]
      )
    end
  end

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
