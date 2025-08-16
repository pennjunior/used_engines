require 'open-uri'

class FeedController < ApplicationController
  def google
    @engines = Engine.includes(engineable: { photos_attachments: :blob })

    builder = Nokogiri::XML::Builder.new(encoding: 'UTF-8') do |xml|
      xml.rss(version: "2.0", 'xmlns:g' => "http://base.google.com/ns/1.0") do
        xml.channel do
          xml.title "Used Engines Feed"
          xml.link root_url
          xml.description "Feed of used engines"

          @engines.each do |engine|
            product = engine.engineable
            next unless product.present?

            xml.item do
              xml['g'].id engine.id
              xml.title engine.title
              xml.description product.description

              xml['g'].price "#{product.price} USD"
              xml['g'].condition "used"
              xml['g'].brand product.manufacturer
              xml['g'].product_type product.class.name
              xml['g'].availability "in stock"
              xml['g'].tax do 
                xml['g'].rate 0
              end

              # Add product landing page URL
              xml['g'].link engine_url(engine)  # or polymorphic_url(product) if routes vary

              # Images
              if product.photos.attached?
                photos = product.photos
                xml['g'].image_link url_for(photos.first)
                photos.drop(1).first(10).each do |photo| # Google allows max 10 additional images
                  xml['g'].additional_image_link url_for(photo)
                end
              end
            end
          end
        end
      end
    end

    render xml: builder.to_xml
  end
end
