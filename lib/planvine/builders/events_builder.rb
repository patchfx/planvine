module Planvine
  class EventsBuilder
    def self.build(event)
      Event.new(
        end_date: Date.parse(event["end_date"]),
        title: event["title"],
        url: event["url"],
        photo: event["photo"]["url"],
        start_date: Date.parse(event["start_date"]),
        id: event["id"]
      )
    end
  end

  class Event
    def initialize(params)
      @params = params
    end

    def end_date
      @params.fetch(:end_date, '')
    end

    def title
      @params.fetch(:title, '')
    end

    def url
      @params.fetch(:url, '')
    end

    def photo
      @params.fetch(:photo, '')
    end

    def start_date
      @params.fetch(:start_date, '')
    end

    def id
      @params.fetch(:id)
    end
  end
end
