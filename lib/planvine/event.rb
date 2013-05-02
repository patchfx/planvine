module Planvine
  class Event
    def initialize(params)
      @params = params
    end

    def venue
      @params.fetch(:venue)
    end

    def description
      @params.fetch(:description, '')
    end

    def source
      @params.fetch(:source, '')
    end

    def url
      @params.fetch(:url, '')
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
