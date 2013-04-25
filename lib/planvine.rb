require 'httparty'
require "planvine/version"
require "planvine/planvine_api"
require "planvine/event"
require "planvine/builders/events_builder"
require "planvine/builders/categories_builder"

module Planvine
  def self.for(api_key)
    PlanvineAPI.new(api_key)
  end
end
