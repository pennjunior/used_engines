
# Jeep 4.0L Inline-6 (Cherokee, Wrangler)
jeep_40 = CarEngine.create!(
  horsepower: 190,
  fuel_type: "Gasoline",
  transmission: "Manual/Automatic",
  mileage: 89000,
  manufacturer: "Jeep",
  year: "1997-2006",
  price: 1750,  # Avg $1900
  condition: "Used",
  description: "Legendary Jeep 4.0L Inline-6 engine. Known for durability and torque. Fits Jeep Cherokee XJ, Wrangler TJ, Grand Cherokee ZJ. Great for rebuilds, restorations, and off-road projects."
)
jeep_urls = ["https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"]
jeep_urls.each do |url|
  jeep_40.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Jeep 4.0L Inline-6 Engine – Cherokee/Wrangler Reliable Swap", price: jeep_40.price, description: jeep_40.description, engineable: jeep_40)


# Toyota 1GR-FE 4.0L V6 (Tacoma, 4Runner, FJ Cruiser)
toyota_1gr = CarEngine.create!(
  horsepower: 236,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 69000,
  manufacturer: "Toyota",
  year: "2005-2015",
  price: 3650,  # Avg $3800
  condition: "Used",
  description: "Toyota 1GR-FE 4.0L V6 Engine. Strong and reliable for Tacoma, 4Runner, FJ Cruiser, Tundra. Perfect for overland rigs, direct replacements, or adventure builds. Clean, low miles, ready to drop in."
)
toyota_1gr_urls = ["https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"]
toyota_1gr_urls.each do |url|
  toyota_1gr.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Toyota 1GR-FE 4.0L V6 Engine – Tacoma/4Runner", price: toyota_1gr.price, description: toyota_1gr.description, engineable: toyota_1gr)


# Chevrolet 6.0L Vortec LQ4 (Trucks, Vans, Swaps)
chevy_lq4 = CarEngine.create!(
  horsepower: 300,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 82000,
  manufacturer: "Chevrolet",
  year: "1999-2007",
  price: 2850,  # Avg $3000
  condition: "Used",
  description: "Chevy 6.0L Vortec LQ4 iron block V8 engine. Great for Silverado, Express Vans, or high-performance swaps. Known for durability and swap flexibility. Compression tested, ready to run."
)
chevy_lq4_urls = ["https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"]
chevy_lq4_urls.each do |url|
  chevy_lq4.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Chevy 6.0L Vortec LQ4 V8 – Truck/Swap Ready", price: chevy_lq4.price, description: chevy_lq4.description, engineable: chevy_lq4)


# Ford EcoBoost 2.3L Turbo I4 (Mustang, Ranger)
ford_ecoboost_23 = CarEngine.create!(
  horsepower: 310,
  fuel_type: "Gasoline",
  transmission: "Automatic/Manual",
  mileage: 52000,
  manufacturer: "Ford",
  year: "2015-2021",
  price: 3850,  # Avg $4000+
  condition: "Used",
  description: "Ford 2.3L EcoBoost Turbo I4 Engine. Modern performance with efficiency, fits Mustang, Ranger, Focus RS swaps. Clean low-mile pullout, tested, ready for boost projects or direct replacements."
)
ford_ecoboost_urls = ["https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"]
ford_ecoboost_urls.each do |url|
  ford_ecoboost_23.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Ford 2.3L EcoBoost Turbo Engine – Mustang/Ranger Swap", price: ford_ecoboost_23.price, description: ford_ecoboost_23.description, engineable: ford_ecoboost_23)


# GM Duramax 6.6L Turbo Diesel LLY (Silverado, Sierra)
duramax_lly = CarEngine.create!(
  horsepower: 310,
  fuel_type: "Diesel",
  transmission: "Automatic",
  mileage: 112000,
  manufacturer: "GM",
  year: "2004-2006",
  price: 4950,  # Avg $5100-5200
  condition: "Used",
  description: "Duramax LLY 6.6L V8 Turbo Diesel Engine. Solid choice for Silverado and Sierra 2500/3500. Clean pullout, compression tested, ideal for heavy-duty replacements or diesel builds."
)
duramax_urls = ["https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"]
duramax_urls.each do |url|
  duramax_lly.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GM 6.6L Duramax LLY Turbo Diesel – Silverado/Sierra", price: duramax_lly.price, description: duramax_lly.description, engineable: duramax_lly)

puts "Created #{Engine.count}"

# Honda K24A2 2.4L DOHC VTEC (Acura TSX, swaps)
honda_k24 = CarEngine.create!(
  horsepower: 205,
  fuel_type: "Gasoline",
  transmission: "Manual",
  mileage: 64000,
  manufacturer: "Honda",
  year: "2004-2008",
  price: 2350,  # Avg ~$2500
  condition: "Used",
  description: "Honda K24A2 2.4L VTEC DOHC Engine from Acura TSX. Popular swap motor for Civics and CR-V, known for reliability and tunability. Clean, low-mile pullout ready for your next project."
)
honda_urls = ["https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"]
honda_urls.each do |url|
  honda_k24.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Honda K24A2 VTEC Engine – TSX Swap Favorite", price: honda_k24.price, description: honda_k24.description, engineable: honda_k24)


# Nissan VQ35DE 3.5L V6 (350Z, Altima, Maxima)
nissan_vq35 = CarEngine.create!(
  horsepower: 287,
  fuel_type: "Gasoline",
  transmission: "Automatic/Manual",
  mileage: 78000,
  manufacturer: "Nissan",
  year: "2003-2008",
  price: 2600,  # Avg ~$2800
  condition: "Used",
  description: "Nissan VQ35DE 3.5L V6 engine. Great for Nissan 350Z, Altima, Maxima, and popular for drift swaps. Low-mileage, tested and ready for installation."
)
nissan_urls = ["https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"]
nissan_urls.each do |url|
  nissan_vq35.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Nissan VQ35DE 3.5L V6 Engine – 350Z/Maxima Swap", price: nissan_vq35.price, description: nissan_vq35.description, engineable: nissan_vq35)


# Subaru EJ255 2.5L Turbo (WRX, Forester XT)
subaru_ej255 = CarEngine.create!(
  horsepower: 265,
  fuel_type: "Gasoline",
  transmission: "Manual",
  mileage: 72000,
  manufacturer: "Subaru",
  year: "2008-2014",
  price: 3100,  # Avg ~$3300-3400
  condition: "Used",
  description: "Subaru EJ255 2.5L Turbocharged Boxer Engine. Compatible with WRX, Forester XT. Compression tested, turbo included, solid upgrade for turbo Subaru builds."
)
subaru_urls = ["https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"]
subaru_urls.each do |url|
  subaru_ej255.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Subaru EJ255 2.5L Turbo Boxer Engine – WRX/Forester", price: subaru_ej255.price, description: subaru_ej255.description, engineable: subaru_ej255)


# BMW N54 3.0L Twin Turbo I6 (335i, 135i, 535i)
bmw_n54 = CarEngine.create!(
  horsepower: 300,
  fuel_type: "Gasoline",
  transmission: "Automatic/Manual",
  mileage: 77000,
  manufacturer: "BMW",
  year: "2007-2010",
  price: 4200,  # Avg ~$4400-4500
  condition: "Used",
  description: "BMW N54B30 3.0L Twin Turbo Inline-6 Engine. Legendary powerplant for 335i, 535i, and 135i. Stock or big power potential. Compression tested, turbos included, plug-and-play ready."
)
bmw_urls = ["https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"]
bmw_urls.each do |url|
  bmw_n54.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "BMW N54 Twin Turbo Engine – 335i/135i/535i Swap", price: bmw_n54.price, description: bmw_n54.description, engineable: bmw_n54)


# Toyota 2JZ-GE 3.0L NA I6 (Lexus IS300, GS300, Supra NA)
toyota_2jzge = CarEngine.create!(
  horsepower: 220,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 85000,
  manufacturer: "Toyota",
  year: "1998-2005",
  price: 2800,  # Avg ~$2950
  condition: "Used",
  description: "Toyota 2JZ-GE 3.0L Naturally Aspirated Inline-6 Engine. Renowned reliability, easy turbo upgrade potential. Great for Lexus IS300, GS300, NA Supra. Low-mile, compression tested, strong runner."
)
toyota_2jz_urls = ["https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"]
toyota_2jz_urls.each do |url|
  toyota_2jzge.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Toyota 2JZ-GE NA Engine – Lexus/Supra", price: toyota_2jzge.price, description: toyota_2jzge.description, engineable: toyota_2jzge)

puts "Created #{Engine.count} engines"


# Ford 5.0L Coyote Gen 2 V8 (Mustang GT 2015-2017)
coyote_gen2 = CarEngine.create!(
  horsepower: 435,
  fuel_type: "Gasoline",
  transmission: "Manual/Automatic",
  mileage: 56000,
  manufacturer: "Ford",
  year: "2015-2017",
  price: 5450,  # Avg ~$5600
  condition: "Used",
  description: "Ford 5.0L Coyote Gen 2 V8 from Mustang GT. Perfect swap for muscle builds, Foxbody conversions, and performance projects. Compression tested, clean pullout with accessories included."
)
coyote_urls = ["https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"]
coyote_urls.each do |url|
  coyote_gen2.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Ford 5.0L Coyote Gen 2 V8 Engine – Mustang/Swap Ready", price: coyote_gen2.price, description: coyote_gen2.description, engineable: coyote_gen2)


# GM 5.3L Vortec LC9 (Flex Fuel Aluminum Block 4WD)
gm_lc9 = CarEngine.create!(
  horsepower: 320,
  fuel_type: "Gasoline/Flex Fuel",
  transmission: "Automatic",
  mileage: 71000,
  manufacturer: "Chevrolet",
  year: "2010-2014",
  price: 2700,  # Avg ~$2850
  condition: "Used",
  description: "GM 5.3L Vortec LC9 Aluminum Block V8 with Active Fuel Management. Ideal for Silverado, Tahoe, and swap projects. Low miles, 4WD configuration, fully tested."
)
gm_lc9_urls = ["https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"]
gm_lc9_urls.each do |url|
  gm_lc9.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Chevy 5.3L Vortec LC9 Engine – Swap Friendly", price: gm_lc9.price, description: gm_lc9.description, engineable: gm_lc9)


# Toyota 2TR-FE 2.7L I4 (Tacoma, Hilux, 4Runner)
toyota_2tr = CarEngine.create!(
  horsepower: 159,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 68000,
  manufacturer: "Toyota",
  year: "2005-2022",
  price: 2450,  # Avg ~$2600
  condition: "Used",
  description: "Toyota 2TR-FE 2.7L I4 engine, known for bulletproof reliability in Tacoma, Hilux, and 4Runner. Great for direct replacements and overland builds. Fresh pullout, tested."
)
toyota_2tr_urls = ["https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"]
toyota_2tr_urls.each do |url|
  toyota_2tr.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Toyota 2TR-FE 2.7L I4 Engine – Tacoma/Hilux Reliable Choice", price: toyota_2tr.price, description: toyota_2tr.description, engineable: toyota_2tr)


# Mercedes M278 4.7L Twin Turbo V8 (S550, CLS550, GL550)
mercedes_m278 = CarEngine.create!(
  horsepower: 449,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 54000,
  manufacturer: "Mercedes-Benz",
  year: "2014-2017",
  price: 4950,  # Avg ~$5100
  condition: "Used",
  description: "Mercedes-Benz M278 4.7L BiTurbo V8. Excellent condition pullout from S550, known for performance and smoothness. Ready for direct replacements or luxury performance builds."
)
mercedes_urls = ["https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"]
mercedes_urls.each do |url|
  mercedes_m278.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Mercedes M278 Twin Turbo V8 Engine – S550/CLS550", price: mercedes_m278.price, description: mercedes_m278.description, engineable: mercedes_m278)


# Dodge 6.4L HEMI 392 V8 (Scat Pack, SRT, RT swaps)
dodge_64hemi = CarEngine.create!(
  horsepower: 485,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 48000,
  manufacturer: "Dodge",
  year: "2015-2022",
  price: 6250,  # Avg ~$6400
  condition: "Used",
  description: "Dodge 6.4L HEMI 392 V8 Engine, factory Scat Pack/SRT motor. Perfect for muscle car upgrades, swap projects, and restorations. Low miles, clean pullout with accessories included."
)
dodge_urls = ["https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"]
dodge_urls.each do |url|
  dodge_64hemi.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Dodge 6.4L HEMI 392 Engine – Scat Pack/SRT Powerhouse", price: dodge_64hemi.price, description: dodge_64hemi.description, engineable: dodge_64hemi)



# Toyota 1GR-FE 4.0L V6 (Tacoma, 4Runner, FJ Cruiser)
toyota_1gr = CarEngine.create!(
  horsepower: 236,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 74000,
  manufacturer: "Toyota",
  year: "2005-2015",
  price: 2950,  # Avg ~$3100
  condition: "Used",
  description: "Toyota 1GR-FE 4.0L V6 Engine, known for reliability in Tacoma, 4Runner, and FJ Cruiser. Great upgrade or replacement option. Low miles, tested and verified, includes essential accessories."
)
toyota_1gr_urls = ["https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"]
toyota_1gr_urls.each do |url|
  toyota_1gr.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Toyota 1GR-FE 4.0L V6 Engine – Tacoma/4Runner", price: toyota_1gr.price, description: toyota_1gr.description, engineable: toyota_1gr)


# Audi 2.0T TFSI EA888 Gen 3 (A4, A5, Q5, GTI swap)
audi_20t = CarEngine.create!(
  horsepower: 220,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 67000,
  manufacturer: "Audi/Volkswagen",
  year: "2013-2017",
  price: 2400,  # Avg ~$2550
  condition: "Used",
  description: "Audi/Volkswagen EA888 Gen 3 2.0T TFSI engine from A4/A5/Q5. Great for direct replacement or GTI swaps. Strong runner, compression tested, includes turbo and accessories."
)
audi_20t_urls = ["https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"]
audi_20t_urls.each do |url|
  audi_20t.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Audi/Volkswagen 2.0T TFSI Gen 3 Engine – Swap Ready", price: audi_20t.price, description: audi_20t.description, engineable: audi_20t)


# Chevrolet 6.0L L96 V8 (Truck, SUV, Hot Rod builds)
chevy_l96 = CarEngine.create!(
  horsepower: 360,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 72000,
  manufacturer: "Chevrolet",
  year: "2010-2019",
  price: 3300,  # Avg ~$3450
  condition: "Used",
  description: "Chevy L96 6.0L V8 engine from HD trucks and SUVs. Great for work trucks, restomods, and hot rod projects. Low miles, plug-and-play ready, tested and verified clean pullout."
)
chevy_l96_urls = ["https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"]
chevy_l96_urls.each do |url|
  chevy_l96.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Chevy 6.0L L96 V8 Engine – Truck/Swap/Hot Rod", price: chevy_l96.price, description: chevy_l96.description, engineable: chevy_l96)


# Lexus 3.5L 2GR-FKS V6 (RX350, ES350, Camry V6 upgrade)
lexus_2gr = CarEngine.create!(
  horsepower: 295,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 54000,
  manufacturer: "Lexus/Toyota",
  year: "2017-2022",
  price: 3850,  # Avg ~$4000
  condition: "Used",
  description: "Lexus/Toyota 2GR-FKS 3.5L V6 with D4-S injection, from RX350, ES350. Excellent upgrade for Camry V6 builds or OEM replacement. Clean, low-mileage, ready for swap or direct fit."
)
lexus_urls = ["https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"]
lexus_urls.each do |url|
  lexus_2gr.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Lexus 2GR-FKS 3.5L V6 Engine – Camry/ES/RX Upgrade", price: lexus_2gr.price, description: lexus_2gr.description, engineable: lexus_2gr)


# Jeep 3.6L Pentastar V6 (Wrangler JK, Grand Cherokee, Ram 1500)
jeep_pentastar = CarEngine.create!(
  horsepower: 285,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 69000,
  manufacturer: "Jeep/Dodge",
  year: "2012-2021",
  price: 3100,  # Avg ~$3250
  condition: "Used",
  description: "3.6L Pentastar V6 engine from Jeep Wrangler JK, Grand Cherokee, and Ram 1500. Highly versatile, low miles, compression tested, ready for plug-and-play installs or swaps."
)
jeep_urls = ["https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"]
jeep_urls.each do |url|
  jeep_pentastar.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Jeep 3.6L Pentastar V6 Engine – Wrangler/Grand Cherokee", price: jeep_pentastar.price, description: jeep_pentastar.description, engineable: jeep_pentastar)

puts "Created #{Engine.count} engines"