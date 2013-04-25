module Planvine
  class EventsBuilder
    def self.build(event)
      Event.new(
        :end_date => Date.parse(event["end_date"]),
        :title => event["title"],
        :url => event["url"],
        :photo => (event["photo"].nil? ? "" : event["photo"]["url"]),
        :start_date => Date.parse(event["start_date"]),
        :venue => Venue.new(event["venue"]),
        :id => event["id"]
      )
    end
  end
end
