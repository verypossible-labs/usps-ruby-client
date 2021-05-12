# frozen_string_literal: true

# This file was auto-generated by lib/tasks/api.rake

module Usps
	module Api
		module Endpoints
			module CarrierPickupCancel
				# The Package Pickup Cancel API cancels a
				# scheduled Package Pickup. To use either the Pickup Cancel or Pickup Change Web
				# Tools, the exact data from the original Schedule API response must be
				# entered. You must enter address information and the confirmation number. Confirmation
				# number alone cannot be used to cancel or change a scheduled
				# pickup. Address information must be identical to what was entered when the
				# pickup was scheduled.
				# @param [Hash] options
				# @option options [required, Hash] carrier_pickup_cancel_request 
				#  * *:firm_name* (String) — Maximum characters allowed: 50. Only alpha and numeric characters, apostrophes, spaces, hyphens "-" and ampersands "&" may be used. Firm or company name is optional except if needed to uniquely identify an address. Some firms/companies that have their own ZIP codes require the use of firm name to properly identify their address. For example: <FirmName>ABC Company</FirmName>
				#  * *:suite_or_apt* (required, String) — Apartment or suite number. Optional except if needed to uniquely identify an address at a multiple dwelling address, for example, an apartment building. For example: <SuiteOrApt>Suite 777</SuiteOrApt>
				#  * *:address2* (required, String) — Street address. For example: <Address2>1390 Market Street</Address2>
				#  * *:urbanization* (required, String) — Urbanization (for Puerto Rico only). ZIP Code prefixes 006 to 009, if area is so designated.
				#  * *:city* (required, String) — City name. Either ZIP5 or City and State are Required For example: <City>Houston</City>
				#  * *:state* (required, String) — State abbreviation. Either ZIP5 or City and State are Required. For example: <State>TX</State>
				#  * *:zip5* (required, String) — 5 digit ZIP Code. Either ZIP5 or City and State are Required. For example: <ZIP5>77058</ZIP5>
				#  * *:zip4* (required, String) — 4 digit ZIP Code. For example: <ZIP4>1234</ZIP4>
				#  * *:confirmation_number* (required, String) — Enter exact Confirmation Number returned with Package Pickup Schedule request. For example: <ConfirmationNumber>ABC12345</ConfirmationNumber>
def carrier_pickup_cancel(options = {})
					throw ArgumentError.new('Required arguments :carrier_pickup_cancel_request missing') if options[:carrier_pickup_cancel_request].nil?
					throw ArgumentError.new('Required arguments :carrier_pickup_cancel_request, :suite_or_apt missing') if options[:carrier_pickup_cancel_request][:suite_or_apt].nil?
					throw ArgumentError.new('Required arguments :carrier_pickup_cancel_request, :address2 missing') if options[:carrier_pickup_cancel_request][:address2].nil?
					throw ArgumentError.new('Required arguments :carrier_pickup_cancel_request, :urbanization missing') if options[:carrier_pickup_cancel_request][:urbanization].nil?
					throw ArgumentError.new('Required arguments :carrier_pickup_cancel_request, :city missing') if options[:carrier_pickup_cancel_request][:city].nil?
					throw ArgumentError.new('Required arguments :carrier_pickup_cancel_request, :state missing') if options[:carrier_pickup_cancel_request][:state].nil?
					throw ArgumentError.new('Required arguments :carrier_pickup_cancel_request, :zip5 missing') if options[:carrier_pickup_cancel_request][:zip5].nil?
					throw ArgumentError.new('Required arguments :carrier_pickup_cancel_request, :zip4 missing') if options[:carrier_pickup_cancel_request][:zip4].nil?
					throw ArgumentError.new('Required arguments :carrier_pickup_cancel_request, :confirmation_number missing') if options[:carrier_pickup_cancel_request][:confirmation_number].nil?

					request = build_request(:carrier_pickup_cancel, options)
					get('https://secure.shippingapis.com/ShippingAPI.dll', {
						API: 'CarrierPickupCancel',
						XML: request,
					})
				end

				private

				def tag_unless_blank(xml, tag_name, data)
					xml.tag!(tag_name, data) unless data.blank? || data.nil?
				end

				def build_carrier_pickup_cancel_request(xml, options = {})
					tag_unless_blank(xml, 'FirmName', options[:carrier_pickup_cancel_request][:firm_name])
					xml.tag!('SuiteOrApt', options[:carrier_pickup_cancel_request][:suite_or_apt])
					xml.tag!('Address2', options[:carrier_pickup_cancel_request][:address2])
					xml.tag!('Urbanization', options[:carrier_pickup_cancel_request][:urbanization])
					xml.tag!('City', options[:carrier_pickup_cancel_request][:city])
					xml.tag!('State', options[:carrier_pickup_cancel_request][:state])
					xml.tag!('ZIP5', options[:carrier_pickup_cancel_request][:zip5])
					xml.tag!('ZIP4', options[:carrier_pickup_cancel_request][:zip4])
					xml.tag!('ConfirmationNumber', options[:carrier_pickup_cancel_request][:confirmation_number])
					xml.target!
				end

			end
		end
	end
end
