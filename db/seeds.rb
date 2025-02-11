# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'ruby-progressbar'
require "open-uri"

# Clear existing data
# CarEngine.destroy_all
# TruckEngine.destroy_all
# BoatEngine.destroy_all
# Engine.destroy_all

#Creating admin user
admin_user = User.create!(
  email: "admin@quan.com",
  password: "gR`£%53n$567",
  password_confirmation: "gR`£%53n$567",
  admin: true
)
puts "Admin user created with email: #{admin_user.email} and password: #{admin_user.password}"
puts "Engines destroyed"
puts "Creating cars2"
# Review.destroy_all
# puts "Reviews destroyed"
# require_relative "seeds/reviews.rb"
# require_relative "seeds/boatengine.rb"
# require_relative "seeds/carengines.rb"
# require_relative "seeds/truckengine.rb"
# require_relative "seeds/cars.rb"
# require_relative "seeds/cars_2.rb"
# puts "created #{Engine.count} engines"
