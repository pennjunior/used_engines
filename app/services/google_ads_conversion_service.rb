# app/services/google_ads_conversion_service.rb
require 'net/http'
require 'uri'
require 'json'

class GoogleAdsConversionService
  GOOGLE_ADS_ENDPOINT = 'https://www.google.com/ads/ga-audiences'

  def self.track_conversion(conversion_id:, value: 0, currency: 'USD')
    # This is a simplified HTTP call version for server-side conversion
    # For production, use the official Google Ads API client for Ruby
    uri = URI(GOOGLE_ADS_ENDPOINT)
    params = {
      conversion_id: conversion_id,
      conversion_value: value,
      currency_code: currency
    }

    # Send the request asynchronously
    Thread.new do
      begin
        Net::HTTP.post(uri, params.to_json, "Content-Type" => "application/json")
      rescue => e
        Rails.logger.error("Google Ads Conversion failed: #{e.message}")
      end
    end
  end
end
 