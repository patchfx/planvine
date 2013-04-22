require 'spec_helper'

module Planvine
  describe EventsBuilder do
    let(:params) {
      {
        "end_date" => "2013-03-21T00:00:00",
        "title" => "Kirill Karabits conducts a concert of Russian Music",
        "url" => "http://planvine.com/event/kirill-karabits-conducts-a-concert-of-russian-music",
        "photo" => {
          "url" => "http://s3.amazonaws.com/com.planvine.v4.image/5126b7af-82ae-4c71-8689-2d3f925c7935.png"
        },
        "start_date" => "2013-03-20T00:00:00",
        "id" => "6557"
      }
    }

    it 'builds events from the json response' do
      EventsBuilder.build(params).should be_an_instance_of(Planvine::Event)
    end
  end
end
