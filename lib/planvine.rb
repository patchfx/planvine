require 'httparty'
require "planvine/version"
require "planvine/planvine_api"
require "planvine/builders/events_builder"

module Planvine
  def self.for(api_key)
    PlanvineAPI.new(api_key)
  end
end
