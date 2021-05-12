# frozen_string_literal: true

# This file was auto-generated by lib/tasks/api.rake

require 'spec_helper'

RSpec.describe Usps::Api::Endpoints::CarrierPickupChange do
  let(:client) { Usps::Client.new }
  context 'carrier_pickup_change' do
    it 'requires carrier_pickup_change_request' do
      expect { client.carrier_pickup_change }.to raise_error ArgumentError, /Required arguments :carrier_pickup_change_request missing/
    end
  end
end