accord_engine = CarEngine.create!(
  horsepower: 185,
  fuel_type: "Gasoline",
  transmission: "CVT",
  mileage: 52000,
  manufacturer: "Honda",
  year: "2013-2017",
  price: 2200,
  condition: "Used",
  description: "Honda Accord 2.4L Inline-4 Earth Dreams engine, great for fuel-efficient sedans."
)
accord_engine_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
accord_engine_urls.each do |url|
  accord_engine.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Honda Accord 2.4L Engine", price: accord_engine.price, description: accord_engine.description, engineable: accord_engine)
puts "Just Created #{Engine.count} engines"
altima_engine = CarEngine.create!(
  horsepower: 182,
  fuel_type: "Gasoline",
  transmission: "CVT",
  mileage: 48000,
  manufacturer: "Nissan",
  year: "2013-2018",
  price: 2100,
  condition: "Used",
  description: "Nissan Altima 2.5L QR25DE engine, smooth and reliable for everyday driving."
)
altima_engine_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
altima_engine_urls.each do |url|
  altima_engine.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Nissan Altima 2.5L Engine", price: altima_engine.price, description: altima_engine.description, engineable: altima_engine)
fusion_engine = CarEngine.create!(
  horsepower: 175,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 60000,
  manufacturer: "Ford",
  year: "2013-2016",
  price: 1950,
  condition: "Used",
  description: "Ford Fusion 2.5L Duratec engine, dependable and efficient for midsize sedans."
)
fusion_engine_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
fusion_engine_urls.each do |url|
  fusion_engine.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Ford Fusion 2.5L Engine", price: fusion_engine.price, description: fusion_engine.description, engineable: fusion_engine)

puts "Just Created #{Engine.count} engines"

malibu_engine = CarEngine.create!(
  horsepower: 160,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 57000,
  manufacturer: "Chevrolet",
  year: "2016-2019",
  price: 2050,
  condition: "Used",
  description: "Chevrolet Malibu 1.5L Turbo Ecotec engine, ideal for daily commutes and family sedans."
)
malibu_engine_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
malibu_engine_urls.each do |url|
  malibu_engine.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Chevrolet Malibu 1.5L Turbo Engine", price: malibu_engine.price, description: malibu_engine.description, engineable: malibu_engine)

sierra_53_v8 = CarEngine.create!(
  horsepower: 355,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 72000,
  manufacturer: "GMC",
  year: "2014-2020",
  price: 3300,
  condition: "Used",
  description: "GMC Sierra 1500 5.3L V8 Vortec engine (L83), known for durability and towing performance."
)
sierra_53_v8_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
sierra_53_v8_urls.each do |url|
  sierra_53_v8.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC Sierra 5.3L V8 Engine", price: sierra_53_v8.price, description: sierra_53_v8.description, engineable: sierra_53_v8)

yukon_62_v8 = CarEngine.create!(
  horsepower: 420,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 58000,
  manufacturer: "GMC",
  year: "2015-2021",
  price: 4400,
  condition: "Used",
  description: "GMC Yukon Denali 6.2L EcoTec3 V8 engine (L86), offers top-tier power for luxury SUVs."
)
yukon_62_v8_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
yukon_62_v8_urls.each do |url|
  yukon_62_v8.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC Yukon 6.2L V8 Engine", price: yukon_62_v8.price, description: yukon_62_v8.description, engineable: yukon_62_v8)

sierra_66_diesel = CarEngine.create!(
  horsepower: 445,
  fuel_type: "Diesel",
  transmission: "Automatic",
  mileage: 65000,
  manufacturer: "GMC",
  year: "2017-2023",
  price: 6200,
  condition: "Used",
  description: "GMC Sierra HD 6.6L Duramax Turbo-Diesel engine (L5P), perfect for heavy-duty towing and work trucks."
)
sierra_66_diesel_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
sierra_66_diesel_urls.each do |url|
  sierra_66_diesel.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC Sierra 6.6L Duramax Diesel Engine", price: sierra_66_diesel.price, description: sierra_66_diesel.description, engineable: sierra_66_diesel)

sierra_43_v6 = CarEngine.create!(
  horsepower: 285,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 69000,
  manufacturer: "GMC",
  year: "2014-2021",
  price: 2600,
  condition: "Used",
  description: "GMC Sierra 4.3L EcoTec3 V6 engine (LV3), ideal for light-duty pickups needing efficiency and torque."
)
sierra_43_v6_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
sierra_43_v6_urls.each do |url|
  sierra_43_v6.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC Sierra 4.3L V6 Engine", price: sierra_43_v6.price, description: sierra_43_v6.description, engineable: sierra_43_v6)

sierra_27_turbo = CarEngine.create!(
  horsepower: 310,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 34000,
  manufacturer: "GMC",
  year: "2019-2023",
  price: 2900,
  condition: "Used",
  description: "GMC Sierra 1500 2.7L Turbocharged Inline-4 engine (L3B), balances torque and fuel efficiency for modern pickups."
)
sierra_27_turbo_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
sierra_27_turbo_urls.each do |url|
  sierra_27_turbo.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC Sierra 2.7L Turbo Engine", price: sierra_27_turbo.price, description: sierra_27_turbo.description, engineable: sierra_27_turbo)

acadia_36_v6 = CarEngine.create!(
  horsepower: 310,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 51000,
  manufacturer: "GMC",
  year: "2017-2023",
  price: 2750,
  condition: "Used",
  description: "GMC Acadia 3.6L LGX V6 engine, a strong performer for midsize SUVs with responsive power and smooth operation."
)
acadia_36_v6_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
acadia_36_v6_urls.each do |url|
  acadia_36_v6.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC Acadia 3.6L V6 Engine", price: acadia_36_v6.price, description: acadia_36_v6.description, engineable: acadia_36_v6)

vortec_57_v8 = CarEngine.create!(
  horsepower: 255,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 89000,
  manufacturer: "GMC",
  year: "1996-2002",
  price: 1800,
  condition: "Used",
  description: "GMC 5.7L Vortec V8 engine (L31), a legendary small-block used in older Sierras and C/K trucks."
)
vortec_57_v8_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
vortec_57_v8_urls.each do |url|
  vortec_57_v8.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC 5.7L Vortec V8 Engine", price: vortec_57_v8.price, description: vortec_57_v8.description, engineable: vortec_57_v8)

canyon_28_duramax = CarEngine.create!(
  horsepower: 181,
  fuel_type: "Diesel",
  transmission: "Automatic",
  mileage: 59000,
  manufacturer: "GMC",
  year: "2016-2022",
  price: 3500,
  condition: "Used",
  description: "GMC Canyon 2.8L Duramax Turbo-Diesel I4 engine, perfect for torque-demanding mid-size trucks."
)
canyon_28_duramax_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
canyon_28_duramax_urls.each do |url|
  canyon_28_duramax.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC Canyon 2.8L Duramax Diesel Engine", price: canyon_28_duramax.price, description: canyon_28_duramax.description, engineable: canyon_28_duramax)
puts "Just Created #{Engine.count} engines"


terrain_25_i4 = CarEngine.create!(
  horsepower: 197,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 46000,
  manufacturer: "GMC",
  year: "2015-2017",
  price: 1900,
  condition: "Used",
  description: "GMC Terrain 2.5L Inline-4 engine (LCV), known for reliability and affordable upkeep in compact SUVs."
)
terrain_25_i4_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
terrain_25_i4_urls.each do |url|
  terrain_25_i4.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC Terrain 2.5L I4 Engine", price: terrain_25_i4.price, description: terrain_25_i4.description, engineable: terrain_25_i4)

terrain_15_turbo = CarEngine.create!(
  horsepower: 170,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 41000,
  manufacturer: "GMC",
  year: "2018-2022",
  price: 2000,
  condition: "Used",
  description: "GMC Terrain 1.5L Turbocharged I4 engine (LFV), fuel-efficient and perfect for urban drivers."
)
terrain_15_turbo_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
terrain_15_turbo_urls.each do |url|
  terrain_15_turbo.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC Terrain 1.5L Turbo Engine", price: terrain_15_turbo.price, description: terrain_15_turbo.description, engineable: terrain_15_turbo)

hummer_ev_ultium = CarEngine.create!(
  horsepower: 1000,
  fuel_type: "Electric",
  transmission: "1-Speed",
  mileage: 8000,
  manufacturer: "GMC",
  year: "2022-2024",
  price: 10500,
  condition: "Used",
  description: "GMC Hummer EV Ultium Drive unit, all-electric motor assembly with up to 1000 hp and torque vectoring."
)
hummer_ev_ultium_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
hummer_ev_ultium_urls.each do |url|
  hummer_ev_ultium.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC Hummer EV Ultium Drive Engine", price: hummer_ev_ultium.price, description: hummer_ev_ultium.description, engineable: hummer_ev_ultium)

savana_60_v8 = CarEngine.create!(
  horsepower: 341,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 72000,
  manufacturer: "GMC",
  year: "2010-2023",
  price: 2900,
  condition: "Used",
  description: "GMC Savana 6.0L V8 engine (L96), popular in cargo vans and fleet vehicles for its durability and power."
)
savana_60_v8_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
savana_60_v8_urls.each do |url|
  savana_60_v8.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC Savana 6.0L V8 Engine", price: savana_60_v8.price, description: savana_60_v8.description, engineable: savana_60_v8)
puts "Just Created #{Engine.count} engines"

sierra_62_v8 = CarEngine.create!(
  horsepower: 420,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 38000,
  manufacturer: "GMC",
  year: "2019-2024",
  price: 4900,
  condition: "Used",
  description: "GMC Sierra 6.2L V8 engine (L87), direct-injection powerhouse for premium trims and towing-heavy setups."
)
sierra_62_v8_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
sierra_62_v8_urls.each do |url|
  sierra_62_v8.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC Sierra 6.2L V8 Engine", price: sierra_62_v8.price, description: sierra_62_v8.description, engineable: sierra_62_v8)

savana_48_v8 = CarEngine.create!(
  horsepower: 285,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 85000,
  manufacturer: "GMC",
  year: "2003-2016",
  price: 2200,
  condition: "Used",
  description: "GMC Savana 4.8L V8 engine (LR4), a reliable workhorse for vans and utility fleets."
)
savana_48_v8_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
savana_48_v8_urls.each do |url|
  savana_48_v8.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC Savana 4.8L V8 Engine", price: savana_48_v8.price, description: savana_48_v8.description, engineable: savana_48_v8)

detroit_62_diesel = CarEngine.create!(
  horsepower: 135,
  fuel_type: "Diesel",
  transmission: "Automatic",
  mileage: 97000,
  manufacturer: "GMC",
  year: "1982-1993",
  price: 1700,
  condition: "Used",
  description: "Detroit Diesel 6.2L V8 engine (J-series), used in older GMC trucks and military vehicles, known for reliability and simplicity."
)
detroit_62_diesel_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
detroit_62_diesel_urls.each do |url|
  detroit_62_diesel.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC 6.2L Detroit Diesel V8 Engine", price: detroit_62_diesel.price, description: detroit_62_diesel.description, engineable: detroit_62_diesel)

yukon_53_vortec = CarEngine.create!(
  horsepower: 285,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 88000,
  manufacturer: "GMC",
  year: "1999-2007",
  price: 2100,
  condition: "Used",
  description: "GMC Yukon 5.3L V8 Vortec (LM7), a legendary small-block platform for SUVs and swaps alike."
)
yukon_53_vortec_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
yukon_53_vortec_urls.each do |url|
  yukon_53_vortec.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC Yukon 5.3L Vortec Engine", price: yukon_53_vortec.price, description: yukon_53_vortec.description, engineable: yukon_53_vortec)

envoy_42_i6 = CarEngine.create!(
  horsepower: 275,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 98000,
  manufacturer: "GMC",
  year: "2002-2009",
  price: 1800,
  condition: "Used",
  description: "GMC Envoy 4.2L Inline-6 engine (Vortec 4200), smooth and torque-rich for midsize SUVs."
)
envoy_42_i6_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
envoy_42_i6_urls.each do |url|
  envoy_42_i6.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC Envoy 4.2L Vortec I6 Engine", price: envoy_42_i6.price, description: envoy_42_i6.description, engineable: envoy_42_i6)

gmc_65_turbo = CarEngine.create!(
  horsepower: 215,
  fuel_type: "Diesel",
  transmission: "Automatic",
  mileage: 105000,
  manufacturer: "GMC",
  year: "1992-2002",
  price: 2500,
  condition: "Used",
  description: "GMC 6.5L Turbo Diesel V8 (L65), a heavy-duty platform known for reliability in older work trucks and Suburbans."
)
gmc_65_turbo_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
gmc_65_turbo_urls.each do |url|
  gmc_65_turbo.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC 6.5L Turbo Diesel V8 Engine", price: gmc_65_turbo.price, description: gmc_65_turbo.description, engineable: gmc_65_turbo)


ls3_62_v8 = CarEngine.create!(
  horsepower: 430,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 32000,
  manufacturer: "GM",
  year: "2008-2021",
  price: 6500,
  condition: "Used",
  description: "GM Performance LS3 6.2L V8 engine, perfect for high-horsepower swaps into GMC classics or restomods."
)
ls3_62_v8_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
ls3_62_v8_urls.each do |url|
  ls3_62_v8.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GM LS3 6.2L Performance Engine", price: ls3_62_v8.price, description: ls3_62_v8.description, engineable: ls3_62_v8)

gmc_350_sbc = CarEngine.create!(
  horsepower: 210,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 92000,
  manufacturer: "GMC",
  year: "1987-2002",
  price: 2000,
  condition: "Used",
  description: "GMC 5.7L 350 Small Block V8, one of the most versatile engines ever made, used in C/K trucks, vans, and performance builds."
)
gmc_350_sbc_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
gmc_350_sbc_urls.each do |url|
  gmc_350_sbc.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC 5.7L 350 Small Block V8 Engine", price: gmc_350_sbc.price, description: gmc_350_sbc.description, engineable: gmc_350_sbc)

sierra_27t_i4 = CarEngine.create!(
  horsepower: 310,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 28000,
  manufacturer: "GMC",
  year: "2019-2024",
  price: 3300,
  condition: "Used",
  description: "GMC Sierra 2.7L Turbocharged I4 engine (L3B), modern high-efficiency engine used in light-duty trucks with excellent torque output."
)
sierra_27t_i4_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
sierra_27t_i4_urls.each do |url|
  sierra_27t_i4.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC Sierra 2.7L Turbo Engine", price: sierra_27t_i4.price, description: sierra_27t_i4.description, engineable: sierra_27t_i4)

canyon_36_v6 = CarEngine.create!(
  horsepower: 308,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 34000,
  manufacturer: "GMC",
  year: "2017-2022",
  price: 3100,
  condition: "Used",
  description: "GMC Canyon 3.6L V6 LGZ engine, used in midsize trucks with direct injection and strong midrange torque."
)
canyon_36_v6_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
canyon_36_v6_urls.each do |url|
  canyon_36_v6.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC Canyon 3.6L V6 Engine", price: canyon_36_v6.price, description: canyon_36_v6.description, engineable: canyon_36_v6)

sierra_30_diesel = CarEngine.create!(
  horsepower: 277,
  fuel_type: "Diesel",
  transmission: "Automatic",
  mileage: 39000,
  manufacturer: "GMC",
  year: "2020-2024",
  price: 4500,
  condition: "Used",
  description: "GMC Sierra 3.0L Duramax I6 Diesel (LM2), an efficient and powerful turbo diesel for light-duty trucks and towing."
)
sierra_30_diesel_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
sierra_30_diesel_urls.each do |url|
  sierra_30_diesel.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC Sierra 3.0L Duramax Diesel Engine", price: sierra_30_diesel.price, description: sierra_30_diesel.description, engineable: sierra_30_diesel)

gmc_292_i6 = CarEngine.create!(
  horsepower: 130,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 102000,
  manufacturer: "GMC",
  year: "1963-1984",
  price: 1600,
  condition: "Used",
  description: "GMC 292ci Inline-6 engine, a rugged workhorse used in classic pickups and military applications."
)
gmc_292_i6_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
gmc_292_i6_urls.each do |url|
  gmc_292_i6.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC 292 Inline-6 Engine", price: gmc_292_i6.price, description: gmc_292_i6.description, engineable: gmc_292_i6)

gmc_307_i6 = CarEngine.create!(
  horsepower: 150,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 95000,
  manufacturer: "GMC",
  year: "1968-1972",
  price: 1700,
  condition: "Used",
  description: "GMC 307ci Inline-6 engine, original equipment in late‑’60s classic trucks, great for restorations or swaps."
)
gmc_307_i6_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
gmc_307_i6_urls.each do |url|
  gmc_307_i6.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC 307 Inline-6 Engine", price: gmc_307_i6.price, description: gmc_307_i6.description, engineable: gmc_307_i6)

sierra_ev_ultium = CarEngine.create!(
  horsepower: 754,
  fuel_type: "Electric",
  transmission: "1-Speed",
  mileage: 5000,
  manufacturer: "GMC",
  year: "2024",
  price: 9800,
  condition: "Used",
  description: "GMC Sierra EV Ultium Drive module, electric powertrain unit delivering up to 754 hp in the new all‑electric pickup."
)
sierra_ev_ultium_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
sierra_ev_ultium_urls.each do |url|
  sierra_ev_ultium.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC Sierra EV Ultium Drive Engine", price: sierra_ev_ultium.price, description: sierra_ev_ultium.description, engineable: sierra_ev_ultium)

sierra_62_lmm = CarEngine.create!(
  horsepower: 385,
  fuel_type: "Diesel",
  transmission: "Automatic",
  mileage: 75000,
  manufacturer: "GMC",
  year: "2007-2010",
  price: 5400,
  condition: "Used",
  description: "GMC Sierra/Savana 6.6L Duramax Diesel (LMM), high-demand mid‑duty diesel used in 2007–10 heavy‑duty trucks."
)
sierra_62_lmm_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
sierra_62_lmm_urls.each do |url|
  sierra_62_lmm.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC 6.6L Duramax LMM Diesel Engine", price: sierra_62_lmm.price, description: sierra_62_lmm.description, engineable: sierra_62_lmm)

gmc_305_v8 = CarEngine.create!(
  horsepower: 190,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 85000,
  manufacturer: "GMC",
  year: "1980-1995",
  price: 1700,
  condition: "Used",
  description: "GMC 5.0L 305 Small Block V8, a classic engine used in trucks and SUVs with good aftermarket support."
)
gmc_305_v8_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
gmc_305_v8_urls.each do |url|
  gmc_305_v8.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC 5.0L 305 Small Block V8 Engine", price: gmc_305_v8.price, description: gmc_305_v8.description, engineable: gmc_305_v8)

gmc_43_v6 = CarEngine.create!(
  horsepower: 195,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 72000,
  manufacturer: "GMC",
  year: "1996-2009",
  price: 1500,
  condition: "Used",
  description: "GMC 4.3L V6 Vortec engine, a dependable and efficient V6 used in mid-size trucks and SUVs."
)
gmc_43_v6_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
gmc_43_v6_urls.each do |url|
  gmc_43_v6.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC 4.3L V6 Vortec Engine", price: gmc_43_v6.price, description: gmc_43_v6.description, engineable: gmc_43_v6)

gmc_66_l5p = CarEngine.create!(
  horsepower: 445,
  fuel_type: "Diesel",
  transmission: "Automatic",
  mileage: 25000,
  manufacturer: "GMC",
  year: "2017-2024",
  price: 8500,
  condition: "Used",
  description: "GMC 6.6L Duramax L5P diesel engine, a modern powerhouse for heavy-duty trucks with strong torque and reliability."
)
gmc_66_l5p_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
gmc_66_l5p_urls.each do |url|
  gmc_66_l5p.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC 6.6L Duramax L5P Diesel Engine", price: gmc_66_l5p.price, description: gmc_66_l5p.description, engineable: gmc_66_l5p)

gmc_48_v8 = CarEngine.create!(
  horsepower: 295,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 67000,
  manufacturer: "GMC",
  year: "2003-2013",
  price: 2300,
  condition: "Used",
  description: "GMC 4.8L V8 Vortec engine, a reliable and smooth small-block V8 found in many full-size trucks and SUVs."
)
gmc_48_v8_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
gmc_48_v8_urls.each do |url|
  gmc_48_v8.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC 4.8L V8 Vortec Engine", price: gmc_48_v8.price, description: gmc_48_v8.description, engineable: gmc_48_v8)

gmc_74_big_block = CarEngine.create!(
  horsepower: 290,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 125000,
  manufacturer: "GMC",
  year: "1970-1990",
  price: 3800,
  condition: "Used",
  description: "GMC 7.4L 454 Big Block V8, legendary for towing and heavy-duty applications in trucks and vans."
)
gmc_74_big_block_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
gmc_74_big_block_urls.each do |url|
  gmc_74_big_block.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC 7.4L 454 Big Block V8 Engine", price: gmc_74_big_block.price, description: gmc_74_big_block.description, engineable: gmc_74_big_block)

gmc_53_v8 = CarEngine.create!(
  horsepower: 355,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 56000,
  manufacturer: "GMC",
  year: "2007-2019",
  price: 4200,
  condition: "Used",
  description: "GMC 5.3L V8 Vortec engine, widely used in light trucks and SUVs, known for reliability and power."
)
gmc_53_v8_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
gmc_53_v8_urls.each do |url|
  gmc_53_v8.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC 5.3L V8 Vortec Engine", price: gmc_53_v8.price, description: gmc_53_v8.description, engineable: gmc_53_v8)

gmc_62_lv3 = CarEngine.create!(
  horsepower: 420,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 18000,
  manufacturer: "GMC",
  year: "2016-2023",
  price: 6500,
  condition: "Used",
  description: "GMC 6.2L LV3 Gen V small block V8, high performance engine used in trucks and SUVs."
)
gmc_62_lv3_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
gmc_62_lv3_urls.each do |url|
  gmc_62_lv3.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC 6.2L LV3 Small Block V8 Engine", price: gmc_62_lv3.price, description: gmc_62_lv3.description, engineable: gmc_62_lv3)

gmc_30_lwn = CarEngine.create!(
  horsepower: 277,
  fuel_type: "Diesel",
  transmission: "Automatic",
  mileage: 42000,
  manufacturer: "GMC",
  year: "2017-2023",
  price: 4700,
  condition: "Used",
  description: "GMC 3.0L LWN Turbo Diesel Inline-6 engine, a fuel-efficient diesel used in mid-size trucks and vans."
)
gmc_30_lwn_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
gmc_30_lwn_urls.each do |url|
  gmc_30_lwn.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC 3.0L LWN Turbo Diesel I6 Engine", price: gmc_30_lwn.price, description: gmc_30_lwn.description, engineable: gmc_30_lwn)

gmc_57_v8 = CarEngine.create!(
  horsepower: 255,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 98000,
  manufacturer: "GMC",
  year: "1982-1995",
  price: 2100,
  condition: "Used",
  description: "GMC 5.7L 350 Small Block V8, a classic engine known for strong performance and versatility in trucks and SUVs."
)
gmc_57_v8_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
gmc_57_v8_urls.each do |url|
  gmc_57_v8.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC 5.7L 350 Small Block V8 Engine", price: gmc_57_v8.price, description: gmc_57_v8.description, engineable: gmc_57_v8)
puts "Just Created #{Engine.count} engines"

gmc_60_v8 = CarEngine.create!(
  horsepower: 360,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 68000,
  manufacturer: "GMC",
  year: "2007-2014",
  price: 3100,
  condition: "Used",
  description: "GMC 6.0L V8 Vortec engine, offering strong torque and power for heavy-duty trucks and SUVs."
)
gmc_60_v8_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
gmc_60_v8_urls.each do |url|
  gmc_60_v8.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC 6.0L V8 Vortec Engine", price: gmc_60_v8.price, description: gmc_60_v8.description, engineable: gmc_60_v8)

gmc_43_v6_tbi = CarEngine.create!(
  horsepower: 200,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 105000,
  manufacturer: "GMC",
  year: "1990-1995",
  price: 1300,
  condition: "Used",
  description: "GMC 4.3L V6 with throttle body injection (TBI), reliable engine for mid-size trucks and SUVs."
)
gmc_43_v6_tbi_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
gmc_43_v6_tbi_urls.each do |url|
  gmc_43_v6_tbi.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC 4.3L V6 TBI Engine", price: gmc_43_v6_tbi.price, description: gmc_43_v6_tbi.description, engineable: gmc_43_v6_tbi)

gmc_66_lb7 = CarEngine.create!(
  horsepower: 300,
  fuel_type: "Diesel",
  transmission: "Automatic",
  mileage: 85000,
  manufacturer: "GMC",
  year: "2001-2004",
  price: 4900,
  condition: "Used",
  description: "GMC 6.6L Duramax LB7 diesel engine, popular early Duramax diesel with high torque and aftermarket support."
)
gmc_66_lb7_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
gmc_66_lb7_urls.each do |url|
  gmc_66_lb7.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC 6.6L Duramax LB7 Diesel Engine", price: gmc_66_lb7.price, description: gmc_66_lb7.description, engineable: gmc_66_lb7)

gmc_65_v8_turbo = CarEngine.create!(
  horsepower: 210,
  fuel_type: "Diesel",
  transmission: "Manual",
  mileage: 110000,
  manufacturer: "GMC",
  year: "1992-2000",
  price: 3200,
  condition: "Used",
  description: "GMC 6.5L Diesel V8 turbocharged engine, a rugged and reliable choice for medium-duty trucks and SUVs."
)
gmc_65_v8_turbo_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
gmc_65_v8_turbo_urls.each do |url|
  gmc_65_v8_turbo.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC 6.5L Turbo Diesel V8 Engine", price: gmc_65_v8_turbo.price, description: gmc_65_v8_turbo.description, engineable: gmc_65_v8_turbo)

gmc_57_ls = CarEngine.create!(
  horsepower: 350,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 45000,
  manufacturer: "GMC",
  year: "2000-2007",
  price: 4000,
  condition: "Used",
  description: "GMC 5.7L LS V8 engine, a popular GM small block engine used in trucks, SUVs, and performance swaps."
)
gmc_57_ls_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
gmc_57_ls_urls.each do |url|
  gmc_57_ls.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC 5.7L LS V8 Engine", price: gmc_57_ls.price, description: gmc_57_ls.description, engineable: gmc_57_ls)

gmc_48_gen4 = CarEngine.create!(
  horsepower: 302,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 73000,
  manufacturer: "GMC",
  year: "2007-2014",
  price: 2800,
  condition: "Used",
  description: "GMC 4.8L Gen IV Vortec V8 engine, reliable and efficient small block found in light trucks and SUVs."
)
gmc_48_gen4_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
gmc_48_gen4_urls.each do |url|
  gmc_48_gen4.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC 4.8L Gen IV Vortec V8 Engine", price: gmc_48_gen4.price, description: gmc_48_gen4.description, engineable: gmc_48_gen4)

gmc_48_gen4 = CarEngine.create!(
  horsepower: 302,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 73000,
  manufacturer: "GMC",
  year: "2007-2014",
  price: 2800,
  condition: "Used",
  description: "GMC 4.8L Gen IV Vortec V8 engine, reliable and efficient small block found in light trucks and SUVs."
)
gmc_48_gen4_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
gmc_48_gen4_urls.each do |url|
  gmc_48_gen4.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC 4.8L Gen IV Vortec V8 Engine", price: gmc_48_gen4.price, description: gmc_48_gen4.description, engineable: gmc_48_gen4)

gmc_36_lfx = CarEngine.create!(
  horsepower: 310,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 40000,
  manufacturer: "GMC",
  year: "2010-2019",
  price: 3900,
  condition: "Used",
  description: "GMC 3.6L LFX V6 engine, modern and efficient with good power-to-weight ratio, commonly used in SUVs and trucks."
)
gmc_36_lfx_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
gmc_36_lfx_urls.each do |url|
  gmc_36_lfx.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC 3.6L LFX V6 Engine", price: gmc_36_lfx.price, description: gmc_36_lfx.description, engineable: gmc_36_lfx)

gmc_81_v8 = CarEngine.create!(
  horsepower: 340,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 90000,
  manufacturer: "GMC",
  year: "2001-2009",
  price: 4700,
  condition: "Used",
  description: "GMC 8.1L Vortec V8 engine, big block V8 designed for heavy-duty trucks and SUVs with strong towing capability."
)
gmc_81_v8_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
gmc_81_v8_urls.each do |url|
  gmc_81_v8.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC 8.1L Vortec V8 Engine", price: gmc_81_v8.price, description: gmc_81_v8.description, engineable: gmc_81_v8)

gmc_28_duramax = CarEngine.create!(
  horsepower: 181,
  fuel_type: "Diesel",
  transmission: "Automatic",
  mileage: 25000,
  manufacturer: "GMC",
  year: "2017-2023",
  price: 5300,
  condition: "Used",
  description: "GMC 2.8L Duramax turbo diesel I4 engine, efficient and reliable powerplant for light trucks and SUVs."
)
gmc_28_duramax_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
gmc_28_duramax_urls.each do |url|
  gmc_28_duramax.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC 2.8L Duramax Turbo Diesel I4 Engine", price: gmc_28_duramax.price, description: gmc_28_duramax.description, engineable: gmc_28_duramax)

gmc_50_v8 = CarEngine.create!(
  horsepower: 295,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 75000,
  manufacturer: "GMC",
  year: "1996-2002",
  price: 2300,
  condition: "Used",
  description: "GMC 5.0L V8 Vortec engine, reliable powerplant used in light trucks and SUVs during late 90s and early 2000s."
)
gmc_50_v8_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
gmc_50_v8_urls.each do |url|
  gmc_50_v8.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC 5.0L V8 Vortec Engine", price: gmc_50_v8.price, description: gmc_50_v8.description, engineable: gmc_50_v8)

gmc_43_ecotec3 = CarEngine.create!(
  horsepower: 285,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 52000,
  manufacturer: "GMC",
  year: "2014-2020",
  price: 3100,
  condition: "Used",
  description: "GMC 4.3L EcoTec3 V6 engine, modern efficient V6 offering good power and fuel economy in trucks and SUVs."
)
gmc_43_ecotec3_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
gmc_43_ecotec3_urls.each do |url|
  gmc_43_ecotec3.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC 4.3L EcoTec3 V6 Engine", price: gmc_43_ecotec3.price, description: gmc_43_ecotec3.description, engineable: gmc_43_ecotec3)

ford_50_coyote = CarEngine.create!(
  horsepower: 460,
  fuel_type: "Gasoline",
  transmission: "Manual",
  mileage: 32000,
  manufacturer: "Ford",
  year: "2011-2023",
  price: 7500,
  condition: "Used",
  description: "Ford 5.0L Coyote V8 engine, high-performance powerplant used in Mustang GT and F-150 models."
)
ford_50_coyote_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
ford_50_coyote_urls.each do |url|
  ford_50_coyote.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Ford 5.0L Coyote V8 Engine", price: ford_50_coyote.price, description: ford_50_coyote.description, engineable: ford_50_coyote)

chevy_62_lt1 = CarEngine.create!(
  horsepower: 455,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 28000,
  manufacturer: "Chevrolet",
  year: "2014-2023",
  price: 7200,
  condition: "Used",
  description: "Chevrolet 6.2L LT1 V8 engine, powerful and efficient engine found in Camaro and Corvette models."
)
chevy_62_lt1_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
chevy_62_lt1_urls.each do |url|
  chevy_62_lt1.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Chevrolet 6.2L LT1 V8 Engine", price: chevy_62_lt1.price, description: chevy_62_lt1.description, engineable: chevy_62_lt1)

dodge_57_hemi = CarEngine.create!(
  horsepower: 395,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 60000,
  manufacturer: "Dodge",
  year: "2003-2021",
  price: 6500,
  condition: "Used",
  description: "Dodge 5.7L HEMI V8 engine, renowned for its power and torque, used in trucks, muscle cars, and SUVs."
)
dodge_57_hemi_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
dodge_57_hemi_urls.each do |url|
  dodge_57_hemi.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Dodge 5.7L HEMI V8 Engine", price: dodge_57_hemi.price, description: dodge_57_hemi.description, engineable: dodge_57_hemi)

honda_20_k20c1 = CarEngine.create!(
  horsepower: 306,
  fuel_type: "Gasoline",
  transmission: "Manual",
  mileage: 35000,
  manufacturer: "Honda",
  year: "2017-2023",
  price: 4800,
  condition: "Used",
  description: "Honda 2.0L K20C1 turbocharged engine, high-revving and efficient engine found in Civic Type R and other sport models."
)
honda_20_k20c1_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
honda_20_k20c1_urls.each do |url|
  honda_20_k20c1.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Honda 2.0L K20C1 Turbocharged Engine", price: honda_20_k20c1.price, description: honda_20_k20c1.description, engineable: honda_20_k20c1)

toyota_27_2trfe = CarEngine.create!(
  horsepower: 159,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 70000,
  manufacturer: "Toyota",
  year: "2005-2020",
  price: 2400,
  condition: "Used",
  description: "Toyota 2.7L 2TR-FE inline-4 engine, reliable and fuel-efficient engine used in Tacoma and other midsize trucks."
)
toyota_27_2trfe_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
toyota_27_2trfe_urls.each do |url|
  toyota_27_2trfe.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Toyota 2.7L 2TR-FE I4 Engine", price: toyota_27_2trfe.price, description: toyota_27_2trfe.description, engineable: toyota_27_2trfe)

subaru_25_ej25 = CarEngine.create!(
  horsepower: 182,
  fuel_type: "Gasoline",
  transmission: "Manual",
  mileage: 85000,
  manufacturer: "Subaru",
  year: "2005-2019",
  price: 2600,
  condition: "Used",
  description: "Subaru 2.5L EJ25 Boxer engine, horizontally opposed 4-cylinder engine known for smooth operation and reliability."
)
subaru_25_ej25_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
subaru_25_ej25_urls.each do |url|
  subaru_25_ej25.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Subaru 2.5L EJ25 Boxer Engine", price: subaru_25_ej25.price, description: subaru_25_ej25.description, engineable: subaru_25_ej25)

nissan_35_vq35de = CarEngine.create!(
  horsepower: 287,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 80000,
  manufacturer: "Nissan",
  year: "2002-2013",
  price: 3000,
  condition: "Used",
  description: "Nissan 3.5L VQ35DE V6 engine, known for smooth power delivery and reliability in Altima, Maxima, and 350Z."
)
nissan_35_vq35de_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
nissan_35_vq35de_urls.each do |url|
  nissan_35_vq35de.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Nissan 3.5L VQ35DE V6 Engine", price: nissan_35_vq35de.price, description: nissan_35_vq35de.description, engineable: nissan_35_vq35de)

vw_20_tsi = CarEngine.create!(
  horsepower: 210,
  fuel_type: "Gasoline",
  transmission: "Manual",
  mileage: 40000,
  manufacturer: "Volkswagen",
  year: "2009-2018",
  price: 3200,
  condition: "Used",
  description: "Volkswagen 2.0L TSI turbocharged inline-4 engine, offering a blend of performance and efficiency in Golf GTI and Jetta."
)
vw_20_tsi_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
vw_20_tsi_urls.each do |url|
  vw_20_tsi.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Volkswagen 2.0L TSI Turbocharged Engine", price: vw_20_tsi.price, description: vw_20_tsi.description, engineable: vw_20_tsi)

bmw_30_n55 = CarEngine.create!(
  horsepower: 300,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 60000,
  manufacturer: "BMW",
  year: "2009-2017",
  price: 6700,
  condition: "Used",
  description: "BMW 3.0L N55 turbocharged inline-6 engine, smooth and powerful engine used in various 3-series and 5-series models."
)
bmw_30_n55_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
bmw_30_n55_urls.each do |url|
  bmw_30_n55.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "BMW 3.0L N55 Turbocharged Inline-6 Engine", price: bmw_30_n55.price, description: bmw_30_n55.description, engineable: bmw_30_n55)

mb_30_om642 = CarEngine.create!(
  horsepower: 221,
  fuel_type: "Diesel",
  transmission: "Automatic",
  mileage: 70000,
  manufacturer: "Mercedes-Benz",
  year: "2005-2014",
  price: 5200,
  condition: "Used",
  description: "Mercedes-Benz 3.0L OM642 V6 turbo diesel engine, renowned for its durability and torque in SUVs and sedans."
)
mb_30_om642_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
mb_30_om642_urls.each do |url|
  mb_30_om642.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Mercedes-Benz 3.0L OM642 V6 Turbo Diesel Engine", price: mb_30_om642.price, description: mb_30_om642.description, engineable: mb_30_om642)

jeep_36_pentastar = CarEngine.create!(
  horsepower: 285,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 55000,
  manufacturer: "Jeep",
  year: "2011-2023",
  price: 4000,
  condition: "Used",
  description: "Jeep 3.6L Pentastar V6 engine, versatile and reliable powerplant used across various Jeep SUVs and trucks."
)
jeep_36_pentastar_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
jeep_36_pentastar_urls.each do |url|
  jeep_36_pentastar.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Jeep 3.6L Pentastar V6 Engine", price: jeep_36_pentastar.price, description: jeep_36_pentastar.description, engineable: jeep_36_pentastar)
puts "Just Created #{Engine.count} engines"

mazda_25_skyactiv = CarEngine.create!(
  horsepower: 187,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 30000,
  manufacturer: "Mazda",
  year: "2014-2023",
  price: 3200,
  condition: "Used",
  description: "Mazda 2.5L SkyActiv-G inline-4 engine, efficient and responsive powerplant used in Mazda3 and CX-5."
)
mazda_25_skyactiv_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
mazda_25_skyactiv_urls.each do |url|
  mazda_25_skyactiv.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Mazda 2.5L SkyActiv-G I4 Engine", price: mazda_25_skyactiv.price, description: mazda_25_skyactiv.description, engineable: mazda_25_skyactiv)

hyundai_20_theta2 = CarEngine.create!(
  horsepower: 164,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 45000,
  manufacturer: "Hyundai",
  year: "2011-2020",
  price: 2700,
  condition: "Used",
  description: "Hyundai 2.0L Theta II GDI inline-4 engine, reliable and fuel-efficient, commonly found in Elantra and Sonata models."
)
hyundai_20_theta2_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
hyundai_20_theta2_urls.each do |url|
  hyundai_20_theta2.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Hyundai 2.0L Theta II GDI Engine", price: hyundai_20_theta2.price, description: hyundai_20_theta2.description, engineable: hyundai_20_theta2)


kia_24_theta2 = CarEngine.create!(
  horsepower: 185,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 42000,
  manufacturer: "Kia",
  year: "2011-2018",
  price: 2800,
  condition: "Used",
  description: "Kia 2.4L Theta II GDI inline-4 engine, smooth and efficient engine used in Optima and Sorento models."
)
kia_24_theta2_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
kia_24_theta2_urls.each do |url|
  kia_24_theta2.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Kia 2.4L Theta II GDI Engine", price: kia_24_theta2.price, description: kia_24_theta2.description, engineable: kia_24_theta2)

audi_20_tfsi = CarEngine.create!(
  horsepower: 220,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 50000,
  manufacturer: "Audi",
  year: "2013-2020",
  price: 5400,
  condition: "Used",
  description: "Audi 2.0L TFSI turbocharged inline-4 engine, balanced for performance and efficiency in A4, Q5, and other models."
)
audi_20_tfsi_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
audi_20_tfsi_urls.each do |url|
  audi_20_tfsi.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Audi 2.0L TFSI Turbocharged Inline-4 Engine", price: audi_20_tfsi.price, description: audi_20_tfsi.description, engineable: audi_20_tfsi)

ford_50_coyote = CarEngine.create!(
  horsepower: 460,
  fuel_type: "Gasoline",
  transmission: "Manual",
  mileage: 45000,
  manufacturer: "Ford",
  year: "2011-2023",
  price: 8000,
  condition: "Used",
  description: "Ford 5.0L Coyote V8 engine, high-performance naturally aspirated V8 found in Mustang GT and F-150 trucks."
)
ford_50_coyote_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
ford_50_coyote_urls.each do |url|
  ford_50_coyote.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Ford 5.0L Coyote V8 Engine", price: ford_50_coyote.price, description: ford_50_coyote.description, engineable: ford_50_coyote)

chevy_62_lt1 = CarEngine.create!(
  horsepower: 455,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 52000,
  manufacturer: "Chevrolet",
  year: "2014-2023",
  price: 9000,
  condition: "Used",
  description: "Chevrolet 6.2L LT1 V8 engine, powerful naturally aspirated V8 used in Corvette, Camaro, and Silverado trucks."
)
chevy_62_lt1_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
chevy_62_lt1_urls.each do |url|
  chevy_62_lt1.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Chevrolet 6.2L LT1 V8 Engine", price: chevy_62_lt1.price, description: chevy_62_lt1.description, engineable: chevy_62_lt1)

ram_67_cummins = CarEngine.create!(
  horsepower: 370,
  fuel_type: "Diesel",
  transmission: "Automatic",
  mileage: 85000,
  manufacturer: "Ram",
  year: "2007-2023",
  price: 7500,
  condition: "Used",
  description: "Ram 6.7L Cummins turbo diesel engine, legendary for torque and durability in heavy-duty trucks."
)
ram_67_cummins_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
ram_67_cummins_urls.each do |url|
  ram_67_cummins.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Ram 6.7L Cummins Turbo Diesel Engine", price: ram_67_cummins.price, description: ram_67_cummins.description, engineable: ram_67_cummins)
puts "Completed and #{Engine.count} engines created"