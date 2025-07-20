sixfive_turbo_diesel = CarEngine.create!(
  horsepower: 215,
  fuel_type: "Diesel",
  transmission: "Automatic",
  mileage: 112000,
  manufacturer: "GMC",
  year: "1994-2002",
  price: 2950,
  condition: "Used",
  description: "Legendary GM 6.5L Turbo Diesel V8, known for its reliability in heavy-duty trucks and military Humvee applications. Perfect for swaps, restorations, or power upgrades."
)
sixfive_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
sixfive_urls.each do |url|
  sixfive_turbo_diesel.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC 6.5L Turbo Diesel Engine", price: sixfive_turbo_diesel.price, description: sixfive_turbo_diesel.description, engineable: sixfive_turbo_diesel)
puts "created #{Engine.count} engines"
lq9_vortec_max = CarEngine.create!(
  horsepower: 345,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 67000,
  manufacturer: "Chevrolet",
  year: "2002-2007",
  price: 3600,
  condition: "Used",
  description: "High-performance 6.0L Vortec MAX (LQ9), ideal for LS swaps, off-road builds, and high-torque projects. Pulled from Silverado SS and Escalade models."
)
lq9_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
lq9_urls.each do |url|
  lq9_vortec_max.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Chevy 6.0L LQ9 Vortec MAX Engine", price: lq9_vortec_max.price, description: lq9_vortec_max.description, engineable: lq9_vortec_max)

lc9_flexfuel = CarEngine.create!(
  horsepower: 320,
  fuel_type: "Gasoline/Flex Fuel",
  transmission: "Automatic",
  mileage: 74000,
  manufacturer: "Chevrolet",
  year: "2007-2014",
  price: 2650,
  condition: "Used",
  description: "Chevy 5.3L Vortec LC9 Flex-Fuel engine with AFM (Active Fuel Management), perfect for modern swaps with E85 compatibility and strong towing power."
)
lc9_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
lc9_urls.each do |url|
  lc9_flexfuel.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Chevy 5.3L LC9 FlexFuel Vortec Engine", price: lc9_flexfuel.price, description: lc9_flexfuel.description, engineable: lc9_flexfuel)

duramax_lbz = CarEngine.create!(
  horsepower: 360,
  fuel_type: "Diesel",
  transmission: "Allison Automatic",
  mileage: 98000,
  manufacturer: "Chevrolet",
  year: "2006-2007",
  price: 6200,
  condition: "Used",
  description: "Duramax 6.6L LBZ Diesel, bulletproof powerplant with no emissions junk. Best choice for heavy-duty builds and high-performance towing rigs."
)
duramax_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
duramax_urls.each do |url|
  duramax_lbz.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Duramax 6.6L LBZ Diesel Engine", price: duramax_lbz.price, description: duramax_lbz.description, engineable: duramax_lbz)
puts "created #{Engine.count} engines"
lr4_vortec = CarEngine.create!(
  horsepower: 285,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 92000,
  manufacturer: "Chevrolet",
  year: "1999-2006",
  price: 1900,
  condition: "Used",
  description: "Chevy 4.8L Vortec LR4, a compact and reliable small-block ideal for budget-friendly LS swaps and lightweight builds with surprising torque."
)
lr4_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
lr4_urls.each do |url|
  lr4_vortec.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Chevy 4.8L LR4 Vortec Engine", price: lr4_vortec.price, description: lr4_vortec.description, engineable: lr4_vortec)

l29_bigblock = CarEngine.create!(
  horsepower: 290,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 103000,
  manufacturer: "GMC",
  year: "1996-2000",
  price: 3600,
  condition: "Used",
  description: "GMC 7.4L L29 Vortec Big Block, monster torque for heavy-duty towing, motorhome swaps, and vintage truck restorations."
)
l29_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
l29_urls.each do |url|
  l29_bigblock.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC 7.4L L29 Vortec Big Block Engine", price: l29_bigblock.price, description: l29_bigblock.description, engineable: l29_bigblock)

cummins_12v = CarEngine.create!(
  horsepower: 215,
  fuel_type: "Diesel",
  transmission: "Manual/Automatic Compatible",
  mileage: 145000,
  manufacturer: "Cummins",
  year: "1989-1998",
  price: 5400,
  condition: "Used",
  description: "Legendary 5.9L Cummins 12-Valve Diesel (6BT), known for bulletproof mechanical injection, perfect for truck conversions and off-grid setups."
)
cummins_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
cummins_urls.each do |url|
  cummins_12v.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "5.9L Cummins 12-Valve Diesel Engine", price: cummins_12v.price, description: cummins_12v.description, engineable: cummins_12v)

coyote_gen3 = CarEngine.create!(
  horsepower: 460,
  fuel_type: "Gasoline",
  transmission: "Automatic/Manual Compatible",
  mileage: 39000,
  manufacturer: "Ford",
  year: "2018-2023",
  price: 7200,
  condition: "Used",
  description: "High-revving 5.0L Coyote Gen 3 V8, direct-injection technology, perfect for Mustang swaps and classic muscle car builds."
)
coyote_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
coyote_urls.each do |url|
  coyote_gen3.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Ford 5.0L Coyote Gen 3 Engine", price: coyote_gen3.price, description: coyote_gen3.description, engineable: coyote_gen3)

ecoboost_v6 = CarEngine.create!(
  horsepower: 375,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 58000,
  manufacturer: "Ford",
  year: "2015-2022",
  price: 4100,
  condition: "Used",
  description: "Ford 3.5L EcoBoost Twin Turbo V6, excellent balance of power and efficiency, perfect for modern F-150 swaps and high-performance utility vehicles."
)
ecoboost_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
ecoboost_urls.each do |url|
  ecoboost_v6.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Ford 3.5L EcoBoost Twin Turbo V6 Engine", price: ecoboost_v6.price, description: ecoboost_v6.description, engineable: ecoboost_v6)

sixfive_turbo = CarEngine.create!(
  horsepower: 215,
  fuel_type: "Diesel",
  transmission: "Automatic",
  mileage: 108000,
  manufacturer: "GMC",
  year: "1994-2002",
  price: 3100,
  condition: "Used",
  description: "Reliable 6.5L Turbo Diesel V8 engine from GMC. Ideal direct replacement for C/K 2500 & 3500, Suburban, and Hummer H1. Great option for work trucks or diesel swaps. Starts, runs, tested. Ready to ship."
)
sixfive_urls = ["https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"]
sixfive_urls.each do |url|
  sixfive_turbo.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "GMC 6.5L Turbo Diesel - Drop-In Replacement", price: sixfive_turbo.price, description: sixfive_turbo.description, engineable: sixfive_turbo)

coyote_gen3 = CarEngine.create!(
  horsepower: 460,
  fuel_type: "Gasoline",
  transmission: "Manual/Auto Compatible",
  mileage: 43000,
  manufacturer: "Ford",
  year: "2018-2023",
  price: 7300,
  condition: "Used",
  description: "Ford 5.0L Coyote Gen 3 V8. Direct-injected, low miles, excellent for Mustang, F-150, and classic Ford swaps. Clean complete engine pull. Starts, runs, tested. Swap-ready for your muscle project."
)
coyote_urls = ["https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"]
coyote_urls.each do |url|
  coyote_gen3.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Ford 5.0L Coyote Gen 3 V8 – Swap Ready", price: coyote_gen3.price, description: coyote_gen3.description, engineable: coyote_gen3)
puts "created #{Engine.count} engines"
ecoboost_v6 = CarEngine.create!(
  horsepower: 375,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 61000,
  manufacturer: "Ford",
  year: "2015-2021",
  price: 4100,
  condition: "Used",
  description: "Ford 3.5L EcoBoost Twin Turbo V6. Proven power upgrade for F-150, Expedition, Transit, and performance swaps. Strong runner, low miles, excellent compression. Includes turbos. Ready to boost your build."
)
ecoboost_urls = ["https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"]
ecoboost_urls.each do |url|
  ecoboost_v6.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Ford 3.5L EcoBoost V6 – Twin Turbo Power", price: ecoboost_v6.price, description: ecoboost_v6.description, engineable: ecoboost_v6)

k24a_engine = CarEngine.create!(
  horsepower: 200,
  fuel_type: "Gasoline",
  transmission: "Manual/Auto Compatible",
  mileage: 68000,
  manufacturer: "Honda",
  year: "2002-2008",
  price: 3200,
  condition: "Used",
  description: "JDM Honda K24A 2.4L DOHC i-VTEC Engine. Clean low-mile import, perfect for Civic Si, Accord swaps, and K-series projects. Great compression, ready for install. Direct fit for K24 builds or budget power upgrades."
)
k24a_urls = ["https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"]
k24a_urls.each do |url|
  k24a_engine.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Honda K24A 2.4L VTEC Swap Engine – Low Miles JDM", price: k24a_engine.price, description: k24a_engine.description, engineable: k24a_engine)

toyota_2ar = CarEngine.create!(
  horsepower: 179,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 54000,
  manufacturer: "Toyota",
  year: "2010-2017",
  price: 2500,
  condition: "Used",
  description: "Toyota 2AR-FE 2.5L DOHC Engine. Great choice for Camry, RAV4, Scion tC, and Highlander. Excellent condition, low miles, clean pullout. Popular swap engine for economy and reliability. Direct fit replacement."
)
toyota_urls = ["https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"]
toyota_urls.each do |url|
  toyota_2ar.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Toyota 2.5L 2AR-FE Engine – Camry/RAV4 Direct Fit", price: toyota_2ar.price, description: toyota_2ar.description, engineable: toyota_2ar)
puts "created #{Engine.count} engines"
subaru_ej25 = CarEngine.create!(
  horsepower: 170,
  fuel_type: "Gasoline",
  transmission: "Manual/Automatic",
  mileage: 78000,
  manufacturer: "Subaru",
  year: "2006-2012",
  price: 3100,
  condition: "Used",
  description: "Subaru EJ25 2.5L SOHC Engine. Non-turbo, fits Forester, Outback, Legacy, Impreza. Reliable and popular for head gasket rebuild projects or full engine swaps. Compression tested, runs strong, ready for installation."
)
subaru_urls = ["https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"]
subaru_urls.each do |url|
  subaru_ej25.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Subaru EJ25 2.5L Engine – Forester/Outback Replacement", price: subaru_ej25.price, description: subaru_ej25.description, engineable: subaru_ej25)

vq35de_engine = CarEngine.create!(
  horsepower: 287,
  fuel_type: "Gasoline",
  transmission: "Manual/Automatic",
  mileage: 82000,
  manufacturer: "Nissan",
  year: "2002-2008",
  price: 3000,
  condition: "Used",
  description: "Nissan VQ35DE 3.5L V6 Engine. Clean, low-mile pullout for Maxima, Altima, 350Z, G35. Popular for street swaps and engine replacements. Compression tested, strong runner, direct fit applications available."
)
vq35de_urls = ["https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"]
vq35de_urls.each do |url|
  vq35de_engine.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Nissan VQ35DE 3.5L Engine – Maxima/350Z Swap", price: vq35de_engine.price, description: vq35de_engine.description, engineable: vq35de_engine)
puts "created #{Engine.count} engines"
n54_bmw = CarEngine.create!(
  horsepower: 300,
  fuel_type: "Gasoline",
  transmission: "Automatic/Manual",
  mileage: 64000,
  manufacturer: "BMW",
  year: "2007-2013",
  price: 4800,
  condition: "Used",
  description: "BMW N54 3.0L Twin Turbo Inline-6 Engine. Legendary power for BMW 335i, 135i, Z4. Perfect for high-performance BMW swaps or engine replacements. Tested with healthy turbos. Popular in tuning community. Ready to drop in."
)
n54_urls = ["https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"]
n54_urls.each do |url|
  n54_bmw.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "BMW N54 3.0L Twin Turbo – 335i/135i Power Upgrade", price: n54_bmw.price, description: n54_bmw.description, engineable: n54_bmw)

toyota_1zz = CarEngine.create!(
  horsepower: 130,
  fuel_type: "Gasoline",
  transmission: "Manual/Automatic",
  mileage: 72000,
  manufacturer: "Toyota",
  year: "1998-2007",
  price: 1800,
  condition: "Used",
  description: "Toyota 1ZZ-FE 1.8L Inline-4 Engine. Popular reliable motor for Corolla, Matrix, and Celica. Low miles, clean pullout, compression tested, runs strong. Perfect for budget replacements and daily driver swaps."
)
toyota_1zz_urls = ["https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"]
toyota_1zz_urls.each do |url|
  toyota_1zz.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Toyota 1ZZ-FE 1.8L Engine – Corolla/Matrix Replacement", price: toyota_1zz.price, description: toyota_1zz.description, engineable: toyota_1zz)

ford_37_cyclone = CarEngine.create!(
  horsepower: 305,
  fuel_type: "Gasoline",
  transmission: "Manual/Automatic",
  mileage: 64000,
  manufacturer: "Ford",
  year: "2007-2014",
  price: 2700,
  condition: "Used",
  description: "Ford 3.7L V6 Cyclone Engine. Popular Mustang and Ranger engine. Strong runner, low miles, tested compression. Great for Mustang V6 replacements and Ranger swaps. Reliable power and torque for daily driving."
)
ford_37_urls = ["https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"]
ford_37_urls.each do |url|
  ford_37_cyclone.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Ford 3.7L V6 Cyclone Engine – Mustang/Ranger Swap", price: ford_37_cyclone.price, description: ford_37_cyclone.description, engineable: ford_37_cyclone)
puts "created #{Engine.count} engines"
chrysler_pentastar = CarEngine.create!(
  horsepower: 295,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 55000,
  manufacturer: "Chrysler",
  year: "2012-2018",
  price: 3500,
  condition: "Used",
  description: "Chrysler 3.6L Pentastar V6 Engine. Reliable powerplant for Dodge Charger, Chrysler 300, Jeep Grand Cherokee, and Ram models. Low miles, compression tested, direct replacement motor. Ideal for performance and daily drivers."
)
chrysler_urls = ["https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"]
chrysler_urls.each do |url|
  chrysler_pentastar.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Chrysler 3.6L Pentastar V6 – Charger/Jeep Replacement", price: chrysler_pentastar.price, description: chrysler_pentastar.description, engineable: chrysler_pentastar)

mazda_mzr = CarEngine.create!(
  horsepower: 263,
  fuel_type: "Gasoline",
  transmission: "Manual/Automatic",
  mileage: 71000,
  manufacturer: "Mazda",
  year: "2007-2013",
  price: 3200,
  condition: "Used",
  description: "Mazda 2.3L MZR Turbocharged Engine. Perfect for Mazdaspeed 3 and Mazda 6 turbo models. Strong turbo motor, low miles, well maintained. Great for performance rebuilds or direct swap replacements."
)
mazda_urls = ["https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"]
mazda_urls.each do |url|
  mazda_mzr.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Mazda 2.3L MZR Turbo Engine – Mazdaspeed 3/6 Swap", price: mazda_mzr.price, description: mazda_mzr.description, engineable: mazda_mzr)
puts "created #{Engine.count} engines"
vw_20tsi = CarEngine.create!(
  horsepower: 210,
  fuel_type: "Gasoline",
  transmission: "Manual/Automatic",
  mileage: 60000,
  manufacturer: "Volkswagen",
  year: "2010-2016",
  price: 2900,
  condition: "Used",
  description: "Volkswagen 2.0L TSI Turbo Engine. Popular for Golf GTI, Jetta, and Passat. Low miles, tested, turbocharged power with strong performance. Direct replacement for turbo models, ready to drop in and run."
)
vw_urls = ["https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"]
vw_urls.each do |url|
  vw_20tsi.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "VW 2.0L TSI Turbo Engine – Golf GTI/Jetta Replacement", price: vw_20tsi.price, description: vw_20tsi.description, engineable: vw_20tsi)

require 'open-uri'

k24a_engine = CarEngine.create!(
  horsepower: 200,
  fuel_type: "Gasoline",
  transmission: "Manual/Auto Compatible",
  mileage: 68000,
  manufacturer: "Honda",
  year: "2002-2008",
  price: 3050,
  condition: "Used",
  description: "JDM Honda K24A 2.4L DOHC i-VTEC Engine. Clean low-mile import, perfect for Civic Si, Accord swaps, and K-series projects. Great compression, ready for install. Direct fit for K24 builds or budget power upgrades."
)
k24a_urls = ["https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"]
k24a_urls.each do |url|
  k24a_engine.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Honda K24A 2.4L VTEC Swap Engine – Low Miles JDM", price: k24a_engine.price, description: k24a_engine.description, engineable: k24a_engine)


toyota_2ar = CarEngine.create!(
  horsepower: 179,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 54000,
  manufacturer: "Toyota",
  year: "2010-2017",
  price: 2350,
  condition: "Used",
  description: "Toyota 2AR-FE 2.5L DOHC Engine. Great choice for Camry, RAV4, Scion tC, and Highlander. Excellent condition, low miles, clean pullout. Popular swap engine for economy and reliability. Direct fit replacement."
)
toyota_urls = ["https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"]
toyota_urls.each do |url|
  toyota_2ar.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Toyota 2.5L 2AR-FE Engine – Camry/RAV4 Direct Fit", price: toyota_2ar.price, description: toyota_2ar.description, engineable: toyota_2ar)
puts "created #{Engine.count} engines"

subaru_ej25 = CarEngine.create!(
  horsepower: 170,
  fuel_type: "Gasoline",
  transmission: "Manual/Automatic",
  mileage: 78000,
  manufacturer: "Subaru",
  year: "2006-2012",
  price: 2950,
  condition: "Used",
  description: "Subaru EJ25 2.5L SOHC Engine. Non-turbo, fits Forester, Outback, Legacy, Impreza. Reliable and popular for head gasket rebuild projects or full engine swaps. Compression tested, runs strong, ready for installation."
)
subaru_urls = ["https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"]
subaru_urls.each do |url|
  subaru_ej25.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Subaru EJ25 2.5L Engine – Forester/Outback Replacement", price: subaru_ej25.price, description: subaru_ej25.description, engineable: subaru_ej25)


vq35de_engine = CarEngine.create!(
  horsepower: 287,
  fuel_type: "Gasoline",
  transmission: "Manual/Automatic",
  mileage: 82000,
  manufacturer: "Nissan",
  year: "2002-2008",
  price: 2850,
  condition: "Used",
  description: "Nissan VQ35DE 3.5L V6 Engine. Clean, low-mile pullout for Maxima, Altima, 350Z, G35. Popular for street swaps and engine replacements. Compression tested, strong runner, direct fit applications available."
)
vq35de_urls = ["https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"]
vq35de_urls.each do |url|
  vq35de_engine.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Nissan VQ35DE 3.5L Engine – Maxima/350Z Swap", price: vq35de_engine.price, description: vq35de_engine.description, engineable: vq35de_engine)
puts "created #{Engine.count} engines"

n54_bmw = CarEngine.create!(
  horsepower: 300,
  fuel_type: "Gasoline",
  transmission: "Automatic/Manual",
  mileage: 64000,
  manufacturer: "BMW",
  year: "2007-2013",
  price: 4650,
  condition: "Used",
  description: "BMW N54 3.0L Twin Turbo Inline-6 Engine. Legendary power for BMW 335i, 135i, Z4. Perfect for high-performance BMW swaps or engine replacements. Tested with healthy turbos. Popular in tuning community. Ready to drop in."
)
n54_urls = ["https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"]
n54_urls.each do |url|
  n54_bmw.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "BMW N54 3.0L Twin Turbo – 335i/135i Power Upgrade", price: n54_bmw.price, description: n54_bmw.description, engineable: n54_bmw)

require 'open-uri'

# Ford 5.0L Coyote V8 (Mustang, F-150)
ford_coyote = CarEngine.create!(
  horsepower: 435,
  fuel_type: "Gasoline",
  transmission: "Manual/Automatic",
  mileage: 70000,
  manufacturer: "Ford",
  year: "2011-2017",
  price: 5300,  # Below average price (~$5450)
  condition: "Used",
  description: "Ford 5.0L Coyote V8 Engine. High-performance Mustang and F-150 motor. Clean low-mile pullout, perfect for muscle car swaps or pickup upgrades. Strong power, reliable, compression tested, ready to install."
)
ford_coyote_urls = ["https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"]
ford_coyote_urls.each do |url|
  ford_coyote.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Ford 5.0L Coyote V8 Engine – Mustang/F-150 Power", price: ford_coyote.price, description: ford_coyote.description, engineable: ford_coyote)


# Chevrolet LS3 6.2L V8 (Camaro, Corvette)
chevy_ls3 = CarEngine.create!(
  horsepower: 430,
  fuel_type: "Gasoline",
  transmission: "Manual/Automatic",
  mileage: 65000,
  manufacturer: "Chevrolet",
  year: "2008-2013",
  price: 5800,  # Below average ~$6000
  condition: "Used",
  description: "Chevrolet LS3 6.2L V8 Engine. Iconic performance motor for Camaro and Corvette. Clean pullout with low miles, compression tested, runs strong. Great for muscle car builds and direct replacement swaps."
)
chevy_ls3_urls = ["https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"]
chevy_ls3_urls.each do |url|
  chevy_ls3.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Chevrolet LS3 6.2L V8 Engine – Camaro/Corvette", price: chevy_ls3.price, description: chevy_ls3.description, engineable: chevy_ls3)

puts "created #{Engine.count} engines"
# Dodge 5.7L HEMI V8 (Ram, Charger, Challenger)
dodge_hemi = CarEngine.create!(
  horsepower: 360,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 68000,
  manufacturer: "Dodge",
  year: "2009-2015",
  price: 4200,  # Below average ~$4350
  condition: "Used",
  description: "Dodge 5.7L HEMI V8 Engine. Powerful motor for Ram trucks, Charger, Challenger. Low-mile, tested, runs great. Ideal for muscle car swaps, truck upgrades, or daily drivers."
)
dodge_hemi_urls = ["https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"]
dodge_hemi_urls.each do |url|
  dodge_hemi.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Dodge 5.7L HEMI V8 Engine – Ram/Charger Swap", price: dodge_hemi.price, description: dodge_hemi.description, engineable: dodge_hemi)


# Volkswagen 1.8T Turbo I4 (Golf, Jetta, Passat)
vw_18t = CarEngine.create!(
  horsepower: 170,
  fuel_type: "Gasoline",
  transmission: "Manual/Automatic",
  mileage: 70000,
  manufacturer: "Volkswagen",
  year: "2000-2005",
  price: 1450,  # Below average ~$1600
  condition: "Used",
  description: "Volkswagen 1.8T Turbocharged I4 Engine. Fits Golf, Jetta, Passat models. Reliable turbo motor, low miles, compression tested. Great replacement or swap motor."
)
vw_18t_urls = ["https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"]
vw_18t_urls.each do |url|
  vw_18t.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "VW 1.8T Turbo I4 Engine – Golf/Jetta Replacement", price: vw_18t.price, description: vw_18t.description, engineable: vw_18t)


# Mercedes-Benz OM642 3.0L V6 Diesel (ML, GL, E-Class)
mercedes_om642 = CarEngine.create!(
  horsepower: 240,
  fuel_type: "Diesel",
  transmission: "Automatic",
  mileage: 75000,
  manufacturer: "Mercedes-Benz",
  year: "2006-2014",
  price: 5200,  # Below average ~$5400
  condition: "Used",
  description: "Mercedes-Benz OM642 3.0L V6 Turbo Diesel Engine. Common in ML, GL, and E-Class. Low-mileage clean pullout, compression tested, ready to run. Ideal diesel upgrade or replacement."
)
mercedes_urls = ["https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"]
mercedes_urls.each do |url|
  mercedes_om642.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Mercedes OM642 3.0L V6 Turbo Diesel – ML/GL/E-Class", price: mercedes_om642.price, description: mercedes_om642.description, engineable: mercedes_om642)
