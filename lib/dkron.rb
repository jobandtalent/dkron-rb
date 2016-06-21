require 'dkron/api'
require 'dkron/cron'
require 'dkron/numeric_seconds'

module Dkron
  def self.seconds(number, units)
    Dkron::NumericSeconds.seconds(number, units)
  end
end
