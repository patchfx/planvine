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
end
