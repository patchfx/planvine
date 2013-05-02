module Planvine
  class EventsBuilder
    def self.build(event)
      Event.new(
        :end_date => event["end_date"],
        :title => event["title"],
        :url => event["url"],
        :photo => (event["photo"].nil? ? "" : event["photo"]["url"]),
        :start_date => event["start_date"],
        :description => event["description"],
        :source => event["source"],
        :venue => Venue.new(event["venue"]),
        :id => event["id"]
      )
    end
  end
end
