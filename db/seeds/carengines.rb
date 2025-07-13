car1 = CarEngine.create!(
  horsepower: 203,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 40000,
  manufacturer: "Toyota",
  year: 2018,
  price: 2000,
  condition: "Used",
  description: "Toyota Camry 2.5L Inline-4 engine, perfect for mid-size sedans."
)
car1_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735304802/s-l1600_2_pgnwbn.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735304802/s-l1600_5_ptswzc.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735304802/s-l1600_4_l82nrr.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735304803/s-l1600_3_mc68jj.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735304803/s-l1600_ytlokv.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735304802/s-l1600_1_bld1sh.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735304803/s-l1600_6_lsodim.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735304803/s-l1600_7_eoxcjq.webp"
]
# Attach car1s to car1
car1_urls.each do |url|
  car1.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Toyota Camry 2.5L Engine", price: car1.price, description: car1.description, engineable: car1)
puts "Just Created #{Engine.count} engines"

car2 = CarEngine.create!(
  horsepower: 174,
  fuel_type: "Gasoline",
  transmission: "CVT",
  mileage: 25000,
  manufacturer: "Honda",
  year: 2020,
  price: 2500,
  condition: "Used",
  description: "Honda Civic 1.5L Turbocharged engine, excellent for performance and fuel economy."
)
car2_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735308141/s-l1600_12_r46xcy.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735308140/s-l1600_11_kvz7fu.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735308140/s-l1600_8_kjicoc.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735308140/s-l1600_10_emljkl.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735308141/s-l1600_3_hyajng.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735308140/s-l1600_9_alix1o.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735308141/s-l1600_5_irhr91.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735308141/s-l1600_7_m5u45v.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735308141/s-l1600_ec9ovp.webp"
]
# Attach car2s to car2
car2_urls.each do |url|
  car2.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Honda Civic 1.5L Turbo Engine", price: car2.price, description: car2.description, engineable: car2)

car3 = CarEngine.create!(
  horsepower: 268,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 67000,
  manufacturer: "Subaru",
  year: 2019,
  price: 3200,
  condition: "Rebuilt",
  description: "Subaru WRX 2.0L Turbo Boxer engine, ideal for high-performance vehicles."
)
car3_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309149/s-l1600_17_tc7ogt.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309148/s-l1600_16_gd3zkj.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309149/s-l1600_18_ochrkv.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_14_pe5qen.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_20_tfdprw.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_19_jebmz9.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735309150/s-l1600_21_ayymdj.webp"
]
car3_urls.each do |url|
  car3.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Subaru WRX 2.0L Turbo Engine", price: car3.price, description: car3.description, engineable: car3)
puts "created #{CarEngine.count} Car engines"

# Example: Seeding the Honda Civic engine
civic_engine = CarEngine.create!(
  year: 2020,
  transmission: "Automitic",
  mileage: 49000,
  fuel_type: "Gasoline",
  manufacturer: "Honda",
  horsepower: 158,
  condition: "Used",
  price: 2100,
  description: "A reliable, fuel-efficient engine with a strong reputation for performance and longevity. Perfect for commuters or budget-conscious drivers."
)

civic_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735565537/s-l1600_27_vhcldj.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735565535/s-l1600_26_guryqq.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735565532/s-l1600_25_kiilsb.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735565529/s-l1600_24_nmxzsf.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735565526/s-l1600_23_fkdcj1.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735565524/s-l1600_22_xwnrvy.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735565523/s-l1600_21_bueqhu.webp"
]

# Attaching photos to the engine
civic_photos.each do |url|
  civic_engine.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

# Creating an associated Engine record
Engine.create!(
  title: "Honda Civic 2.0L i-VTEC Engine",
  price: civic_engine.price,
  description: civic_engine.description,
  engineable: civic_engine
)

puts "Successfully created #{CarEngine.count} car engines!"

camry_engine = CarEngine.create!(
  year: 2019,
  transmission: "Automatic",
  mileage: 89000,
  fuel_type: "Gasoline",
  manufacturer: "Toyota",
  horsepower: 203,
  condition: "Used",
  price: 3700,
  description: "This engine offers an excellent balance of horsepower and fuel economy, ideal for daily drivers and long-distance travelers."
)

camry_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735480676/s-l1600_9_uw1hbq.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735480674/s-l1600_17_jbqz44.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735480674/s-l1600_13_opf5i7.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735480674/s-l1600_14_aocec4.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735480673/s-l1600_16_pklpqa.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735480673/s-l1600_12_x1w60q.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735480672/s-l1600_11_kracg9.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735480672/s-l1600_10_ji7lat.webp"
]

camry_photos.each do |url|
  camry_engine.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "Toyota Camry 2.5L Dynamic Force Engine",
  price: camry_engine.price,
  description: camry_engine.description,
  engineable: camry_engine
)

f150_engine = CarEngine.create!(
  year: 2021,
  transmission: "Automatic",
  mileage: 34100,
  fuel_type: "Gasoline",
  manufacturer: "Ford",
  horsepower: 400,
  condition: "New",
  price: 6200,
  description: "A horsepowerful, fuel-efficient engine designed for towing, hauling, and off-road adventures."
)

f150_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735480964/s-l1600_26_jav4yx.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735480966/s-l1600_27_o7sfj1.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735480963/s-l1600_25_kfrblk.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735480960/s-l1600_22_ie6kxf.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735480961/s-l1600_23_cuwwre.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735480962/s-l1600_24_pa3oc4.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735480959/s-l1600_21_bhjofv.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735480959/s-l1600_20_z2skp8.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735480958/s-l1600_19_yp9bzh.webp"
]

f150_photos.each do |url|
  f150_engine.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "Ford F-150 3.5L EcoBoost V6 Engine",
  price: f150_engine.price,
  description: f150_engine.description,
  engineable: f150_engine
)
silverado_engine = CarEngine.create!(
  year: 2020,
  transmission: "Automatic",
  mileage: 50000,
  fuel_type: "Gasoline",
  manufacturer: "Chevrolet",
  horsepower: 355,
  condition: "Used",
  price: 4500,
  description: "This durable V8 engine is perfect for heavy-duty applications, offering reliability and strong performance."
)

silverado_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735481183/s-l1600_28_lveiet.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735481184/s-l1600_29_w4rpc5.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735481185/s-l1600_30_dylmo5.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735481206/s-l1600_31_opdzml.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735481208/s-l1600_33_mmb28i.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735481207/s-l1600_32_ashyx7.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735481210/s-l1600_34_is7az6.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735481214/s-l1600_35_wnubnr.webp"
]

silverado_photos.each do |url|
  silverado_engine.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "Chevrolet Silverado 1500 5.3L V8 Engine",
  price: silverado_engine.price,
  description: silverado_engine.description,
  engineable: silverado_engine
)

puts "Just Created #{Engine.count} engines"

altima_engine = CarEngine.create!(
  year: 2006,
  transmission: "Automatic",
  mileage: 65000,
  fuel_type: "Gasoline",
  manufacturer: "Nissan",
  horsepower: 188,
  condition: "Used",
  price: 2800,
  description: "Known for smooth performance and excellent fuel efficiency, this engine is a popular choice for mid-sized sedans."
)

altima_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735481509/s-l1600_36_zhm086.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735481510/s-l1600_38_uocxeo.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735481509/s-l1600_37_vnaqke.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735481511/s-l1600_39_rjztgv.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735481515/s-l1600_41_gstkmc.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735481513/s-l1600_40_arbuzn.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735481517/s-l1600_42_nvdvc2.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735481520/s-l1600_44_y6faq4.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735481525/s-l1600_45_gt7ftc.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735481519/s-l1600_43_zm55jf.webp"
]

altima_photos.each do |url|
  altima_engine.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "Nissan Altima 2.5L DOHC Engine",
  price: altima_engine.price,
  description: altima_engine.description,
  engineable: altima_engine
)
puts "Just Created #{Engine.count} engines"

bmw_n54_engine = CarEngine.create!(
  year: "2007-2013",  # Changed year to string representing range
  transmission: "Automatic",
  mileage: 362000,
  fuel_type: "Gasoline",
  manufacturer: "BMW",
  horsepower: 300,
  condition: "Used",
  price: 4800,
  description: "A high-performance engine known for its smooth horsepower delivery and tunability, popular among sports sedan enthusiasts."
)

bmw_n54_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735481983/s-l1600_51_fzcmwy.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735481981/s-l1600_52_sfbtt9.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735481979/s-l1600_59_mm18h6.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735481978/s-l1600_58_wt9iop.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735481977/s-l1600_56_lwg7x0.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735481976/s-l1600_55_eyjksj.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735481975/s-l1600_54_umnfb4.webp"
]

bmw_n54_photos.each do |url|
  bmw_n54_engine.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "BMW N54 3.0L Twin-Turbo Inline-6 Engine",
  price: bmw_n54_engine.price,
  description: bmw_n54_engine.description,
  engineable: bmw_n54_engine
)

jeep_pentastar_engine = CarEngine.create!(
  year: "2012-2022",  # Changed year to range
  transmission: "Automatic",
  mileage: 87000,
  fuel_type: "Gasoline",
  manufacturer: "Jeep",
  horsepower: 285,
  condition: "Used",
  price: 3900,
  description: "A rugged and durable engine ideal for off-road performance and Jeep enthusiasts."
)

jeep_pentastar_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735483602/img-20220611-095625_kmdsvf.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735483603/img-20220611-095633_se47aw.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735483606/img-20220611-095650_t98cep.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735483604/img-20220611-095650_1_i1xiq1.jpg"
]

jeep_pentastar_photos.each do |url|
  jeep_pentastar_engine.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "Jeep Wrangler 3.6L Pentastar V6 Engine",
  price: jeep_pentastar_engine.price,
  description: jeep_pentastar_engine.description,
  engineable: jeep_pentastar_engine
)
subaru_wrx_engine = CarEngine.create!(
  year: "2015-2021",  # Changed year to range
  transmission: "Automatic",
  mileage: 61000,
  fuel_type: "Gasoline",
  manufacturer: "Subaru",
  horsepower: 268,
  condition: "Used",
  price: 3600,
  description: "A sporty, high-revving engine, perfect for rally-inspired vehicles and all-weather performance."
)

subaru_wrx_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735483836/s-l1600_1_ci9ym6.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735483852/s-l1600_2_qfx3ig.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735483853/s-l1600_3_j5z2v5.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735483856/s-l1600_4_ro0i5k.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735483857/s-l1600_5_zw7obh.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735483860/s-l1600_7_ob3bpx.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735483859/s-l1600_6_oar2ot.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735483862/s-l1600_8_vm93am.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735483863/s-l1600_9_e4makc.webp"
]

subaru_wrx_photos.each do |url|
  subaru_wrx_engine.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "Subaru WRX 2.0L FA20DIT Turbocharged Engine",
  price: subaru_wrx_engine.price,
  description: subaru_wrx_engine.description,
  engineable: subaru_wrx_engine
)

corvette_ls3_engine = CarEngine.create!(
  year: "2008-2013",  # Changed year to range
  transmission: "Automatic",
  mileage: 90000,
  fuel_type: "Gasoline",
  manufacturer: "Chevrolet",
  horsepower: 430,
  condition: "Used",
  price: 6500,
  description: "A horsepowerhouse engine renowned for its performance in sports cars, with incredible tuning potential."
)

corvette_ls3_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735512693/s-l1600_13_msuq2l.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735512692/s-l1600_12_ehb2dp.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735512693/s-l1600_18_dw6jyr.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735512692/s-l1600_19_ulg4ww.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735512692/s-l1600_11_jrwmej.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735512692/s-l1600_17_mgq8nr.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735512692/s-l1600_16_xdxso6.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735512691/s-l1600_14_sv0pyw.webp"
]

corvette_ls3_photos.each do |url|
  corvette_ls3_engine.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "Chevrolet Corvette LS3 6.2L V8 Engine",
  price: corvette_ls3_engine.price,
  description: corvette_ls3_engine.description,
  engineable: corvette_ls3_engine
)
puts "Just Created #{Engine.count} engines"

accord_engine = CarEngine.create!(
  year: "2018-2023",  # Changed year to range
  transmission: "Automatic",
  mileage: 50000,
  fuel_type: "Gasoline",
  manufacturer: "Honda",
  horsepower: 192,
  condition: "New",
  price: 3200,
  description: "A compact, fuel-efficient engine designed for modern sedans and everyday drivers."
)

accord_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735513007/s-l1600_23_tk9nh7.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735513003/s-l1600_20_oyorbi.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735513007/s-l1600_27_f1mag5.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735513006/s-l1600_26_faujpi.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735513006/s-l1600_24_hafdkx.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735513005/s-l1600_22_racwnj.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735513005/s-l1600_25_i0qtzq.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735513004/s-l1600_21_yqpp1p.webp"
]

accord_photos.each do |url|
  accord_engine.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "Honda Accord 1.5L Turbocharged Engine",
  price: accord_engine.price,
  description: accord_engine.description,
  engineable: accord_engine
)

toyota_2jz = CarEngine.create!(
  year: "1991-2002",
  transmission: "Automatic",
  mileage: 80000,
  fuel_type: "Gasoline",
  manufacturer: "Toyota",
  horsepower: 276,
  condition: "Used",
  price: 7200,
  description: "Known as one of the most legendary engines, the 2JZ-GTE offers incredible durability and performance, especially in the tuning community."
)

toyota_2jz_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735539409/s-l960_2_uwbuqv.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735539410/s-l1600_1_njljjh.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735539409/s-l960_4_yqahix.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735539410/s-l960_7_nh0gag.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735539409/s-l960_3_u0q5h0.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735539409/s-l960_2_uwbuqv.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735539408/s-l960_5_cs6w8m.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735539408/s-l960_1_dr0tgz.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735539408/s-l960_6_ks8i09.webp"
]

toyota_2jz_photos.each do |url|
  toyota_2jz.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "Toyota 2JZ-GTE Turbocharged Inline-6 Engine",
  price: toyota_2jz.price,
  description: toyota_2jz.description,
  engineable: toyota_2jz
)
ford_coyote = CarEngine.create!(
  year: "2011-2023",
  transmission: "Automatic",
  mileage: 70000,
  fuel_type: "Gasoline",
  manufacturer: "Ford",
  horsepower: 450,
  condition: "New",
  price: 6000,
  description: "The Ford Coyote engine horsepowers the Mustang GT and F-150, combining high horsehorsepower with durability and reliability."
)

ford_coyote_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735539408/s-l960_6_ks8i09.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735539408/s-l960_1_dr0tgz.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735539408/s-l960_5_cs6w8m.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735539409/s-l960_2_uwbuqv.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735539409/s-l960_3_u0q5h0.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735539409/s-l960_4_yqahix.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735539409/s-l960_ehj0kp.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735539410/s-l1600_1_njljjh.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735539410/s-l960_7_nh0gag.webp"
]

ford_coyote_photos.each do |url|
  ford_coyote.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "Ford Coyote 5.0L V8 Engine",
  price: ford_coyote.price,
  description: ford_coyote.description,
  engineable: ford_coyote
)
nissan_vr38 = CarEngine.create!(
  year: "2007-2022",
  transmission: "Automatic",
  mileage: 41000,
  fuel_type: "Gasoline",
  manufacturer: "Nissan",
  horsepower: 565,
  condition: "Used",
  price: 12000,
  description: "This engine horsepowers the iconic Nissan GT-R R35, providing breathtaking performance and tuning potential."
)

nissan_vr38_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735540389/s-l1600_11_qnnrls.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735540391/s-l1600_19_laojnj.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735540391/s-l1600_17_xy07ni.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735540390/s-l1600_18_urjhyf.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735540391/s-l1600_16_sdthwj.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735540390/s-l1600_14_wsgxji.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735540389/s-l1600_13_ga38e5.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735540389/s-l1600_12_h3nkvc.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735540391/s-l1600_10_fao118.webp"
]

nissan_vr38_photos.each do |url|
  nissan_vr38.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "Nissan VR38DETT Twin-Turbocharged V6 Engine",
  price: nissan_vr38.price,
  description: nissan_vr38.description,
  engineable: nissan_vr38
)

puts "Just Created #{Engine.count} engines"
mazda_13b = CarEngine.create!(
  year: "2004-2008",
  transmission: "Automatic",
  mileage: 71000,
  fuel_type: "Gasoline",
  manufacturer: "Mazda",
  horsepower: 276,
  condition: "Used",
  price: 5500,
  description: "A unique rotary engine found in the RX-7 FD3S, popular for its lightweight design and high-revving nature."
)

mazda_13b_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735540814/s-l1600_26_kbokqt.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735540813/s-l1600_22_uybv1c.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735540814/s-l1600_27_yycoqp.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735540812/s-l1600_21_kge0s9.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735540812/s-l1600_20_zkruzx.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735540814/s-l1600_25_xh5req.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735540815/s-l1600_23_zfceii.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735540814/s-l1600_24_z6zvlg.webp"
]

mazda_13b_photos.each do |url|
  mazda_13b.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "Mazda 13B-REW Rotary Engine",
  price: mazda_13b.price,
  description: mazda_13b.description,
  engineable: mazda_13b
)
audi_4_0t = CarEngine.create!(
  year: "2012-2023",
  transmission: "Automatic",
  mileage: 98000,
  fuel_type: "Gasoline",
  manufacturer: "Audi",
  horsepower: 560,
  condition: "Used",
  price: 8500,
  description: "A versatile engine that horsepowers luxury sedans like the Audi RS7 and offers excellent performance and refinement."
)

audi_4_0t_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735541384/s-l1600_33_ntkjqk.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735541384/s-l1600_34_qsss1n.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735541385/s-l1600_32_rewysz.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735541384/s-l1600_31_bzbndi.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735541383/s-l1600_30_imyaga.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735541383/s-l1600_29_hwwvpf.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735541382/s-l1600_28_dujmpk.webp"
]

audi_4_0t_photos.each do |url|
  audi_4_0t.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "Audi 4.0L Twin-Turbocharged V8 Engine",
  price: audi_4_0t.price,
  description: audi_4_0t.description,
  engineable: audi_4_0t
)
chevy_ls3 = CarEngine.create!(
  year: "2008-2017",
  transmission: "Automatic",
  mileage: 62000,
  fuel_type: "Gasoline",
  manufacturer: "Chevrolet",
  horsepower: 430,
  condition: "Used",
  price: 5500,
  description: "A popular choice for muscle car enthusiasts and LS swaps, the LS3 provides exceptional performance and reliability."
)

chevy_ls3_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735541674/s-l1600_36_qxos9r.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735541675/s-l1600_37_g7pbpd.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735541676/s-l1600_40_jowbxy.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735541676/s-l1600_38_b4ifli.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735541677/s-l1600_39_cwmze8.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735541678/s-l1600_41_bvojyq.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735541681/s-l1600_42_y6kuwm.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735541683/s-l1600_43_m0mtft.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735541684/s-l1600_44_vlhjby.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735541684/s-l1600_35_te6beq.webp"
]

chevy_ls3_photos.each do |url|
  chevy_ls3.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "Chevrolet LS3 6.2L V8 Engine",
  price: chevy_ls3.price,
  description: chevy_ls3.description,
  engineable: chevy_ls3
)
honda_k20a = CarEngine.create!(
  year: "2003-2011",
  transmission: "Automatic",
  mileage: 71017,
  fuel_type: "Gasoline",
  manufacturer: "Honda",
  horsepower: 220,
  condition: "Used",
  price: 1200,
  description: "The Honda K24A is a lightweight, high-revving engine beloved by the JDM and tuning communities."
)

honda_k20a_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735541989/s-l1600_9_vx5eaq.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735541988/s-l1600_8_oh2wmm.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735541987/s-l1600_7_rnk1zv.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735541985/s-l1600_6_ma239v.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735541984/s-l1600_5_ibxtqn.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735541983/s-l1600_4_ldaobn.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735541980/s-l1600_3_rtbacf.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735541980/s-l1600_2_pl9muj.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735541979/s-l1600_1_pfkr6k.webp"
]

honda_k20a_photos.each do |url|
  honda_k20a.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "Honda Element Engine 2.4L 4-stroke Motor JDM K24A",
  price: honda_k20a.price,
  description: honda_k20a.description,
  engineable: honda_k20a
)
dodge_hellcat = CarEngine.create!(
  year: "2015-2023",
  transmission: "Automatic",
  mileage: 40098,
  fuel_type: "Gasoline",
  manufacturer: "Dodge",
  horsepower: 707,
  condition: "New",
  price: 15000,
  description: "The Hellcat engine offers unparalleled horsepower and performance, perfect for muscle cars and drag racing enthusiasts."
)

dodge_hellcat_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735542332/s-l1600_12_lsfhb1.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735542331/s-l1600_18_ej7xuk.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735542331/s-l1600_21_ha611z.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735542330/s-l1600_19_rp3qe4.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735542330/s-l1600_17_zb5lqm.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735542329/s-l1600_16_qsr0hk.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735542329/s-l1600_14_bc7b0i.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735542328/s-l1600_13_sbphh2.webp"
]

dodge_hellcat_photos.each do |url|
  dodge_hellcat.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "Dodge Hellcat 6.2L Supercharged V8 Engine",
  price: dodge_hellcat.price,
  description: dodge_hellcat.description,
  engineable: dodge_hellcat
)
subaru_ej257 = CarEngine.create!(
  year: "2004-2021",
  transmission: "Automatic",
  mileage: 71000,
  fuel_type: "Gasoline",
  manufacturer: "Subaru",
  horsepower: 305,
  condition: "Used",
  price: 6500,
  description: "Found in the Subaru WRX STI, this engine delivers excellent performance and is a favorite among rally enthusiasts."
)

subaru_ej257_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735542740/s-l1600_22_bcrju5.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735542741/s-l1600_23_gnzhki.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735542743/s-l1600_24_sedk1z.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735542744/s-l1600_28_bzn3w7.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735542748/s-l1600_27_ppal7u.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735542744/s-l1600_25_gwnkgn.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735542744/s-l1600_26_ajtyik.webp"
]

subaru_ej257_photos.each do |url|
  subaru_ej257.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "Subaru EJ257 2.5L Turbocharged Flat-4 Engine",
  price: subaru_ej257.price,
  description: subaru_ej257.description,
  engineable: subaru_ej257
)
toyota_1gr = CarEngine.create!(
  year: "2002-2021",
  transmission: "Automatic",
  mileage: 47000,
  fuel_type: "Gasoline",
  manufacturer: "Toyota",
  horsepower: 236,
  condition: "Used",
  price: 4800,
  description: "A dependable V6 engine commonly found in Toyota trucks and SUVs, known for reliability and performance."
)

toyota_1gr_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735543086/s-l1600_34_worgg1.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735543086/s-l1600_35_x9ksqt.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735543085/s-l1600_33_ov6sz8.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735543088/s-l1600_36_vtuzml.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735543088/s-l1600_29_v1hpdu.webp"
]

toyota_1gr_photos.each do |url|
  toyota_1gr.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "Toyota 1GR-FE 4.0L V6 Engine",
  price: toyota_1gr.price,
  description: toyota_1gr.description,
  engineable: toyota_1gr
)
chevrolet_6_2 = CarEngine.create!(
  year: "2015-2024",
  transmission: "Automatic",
  mileage: 81000,
  fuel_type: "Gasoline",
  manufacturer: "Chevrolet",
  horsepower: 420,
  condition: "New",
  price: 9500,
  description: "The 6.2L V8 engine from Chevrolet provides exceptional horsehorsepower and performance, commonly used in high-performance models like the Camaro SS and Silverado."
)

chevrolet_6_2_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735543401/db32l2584724-chevy-62l-l92-ls3-aluminium-v8-komplett-motorbyte-motorer-till-salu-sverige_sgo9ml.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735543402/db32l2584724-chevy-62l-l92-ls3-aluminium-v8-permuta-completa-del-motore-motori-in-vendita-italia_sfw0fq.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735543402/db32l2584724-chevy-62l-l92-ls3-aluminium-v8-komplett-motorbytte-motorer-til-salgs-norge_xuf5cp.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735543405/db32l2584724-chevy-62l-l92-ls3-aluminium-v8-taydellinen-moottorin-vaihto-moottorit-myynnissa-suomessa_hvurmg.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735543407/db32l2584724-chevy-62l-l92-ls3-aluminium-v8-vollstandiger-motorwechsel-motoren-zu-verkaufen-deutschland-osterreich-schweiz_xcwoup.jpg"
]

chevrolet_6_2_photos.each do |url|
  chevrolet_6_2.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "Chevrolet 6.2L V8 Engine",
  price: chevrolet_6_2.price,
  description: chevrolet_6_2.description,
  engineable: chevrolet_6_2
)

puts "Just Created #{Engine.count} engines"

honda_k20c1 = CarEngine.create!(
  year: "2017-2024",
  transmission: "Automatic",
  mileage: 53000,
  fuel_type: "Gasoline",
  manufacturer: "Honda",
  horsepower: 306,
  condition: "New",
  price: 7500,
  description: "The K20C1 2.0L Turbocharged engine offers great performance and reliability, commonly used in the Honda Civic Type R and other sport compact models."
)

honda_k20c1_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735544342/IMG_0478__61497_cl36ae.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735544343/IMG_0479__23900_q1d2wx.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735544343/IMG_0482__92354_fol7b7.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735544346/IMG_0485__99461_nixe0x.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735544348/IMG_0489__64041_jlea7u.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735544350/IMG_0492__59187_ykr8re.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735544352/IMG_0493__09403_d0ruap.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735544353/IMG_0502__31581_cjxpq3.jpg"
]

honda_k20c1_photos.each do |url|
  honda_k20c1.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "Honda K20C1 2.0L Turbo Engine",
  price: honda_k20c1.price,                                     
  description: honda_k20c1.description,
  engineable: honda_k20c1
)
ford_ecoboost = CarEngine.create!(
  year: "2015-2024",
  transmission: "Automatic",
  mileage: 49000,
  fuel_type: "Gasoline",
  manufacturer: "Ford",
  horsepower: 350,
  condition: "New",
  price: 6800,
  description: "The 2.3L EcoBoost engine by Ford offers a perfect balance of horsepower and fuel efficiency, often found in models like the Ford Mustang and Ford Focus RS."
)

ford_ecoboost_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735544743/IMG_2749__69166_eqjdes.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735544744/IMG_2750__17326_uarrby.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735544745/IMG_2751__34717_wwjitj.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735544748/IMG_2744__66318_fg4zyx.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735544749/IMG_2742__87559_khytme.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735544751/IMG_2747__84750_lhxyww.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735544739/IMG_2738__00608_kzytgz.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735544740/IMG_2740__05862_nmo6wr.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735544739/IMG_2739__91993_vwazo6.jpg"
]

ford_ecoboost_photos.each do |url|
  ford_ecoboost.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "Ford EcoBoost 2.3L Engine",
  price: ford_ecoboost.price,
  description: ford_ecoboost.description,
  engineable: ford_ecoboost
)
bmw_b58 = CarEngine.create!(
  year: "2016-2024",
  transmission: "Manual",
  mileage: 44000,
  fuel_type: "Gasoline",
  manufacturer: "BMW",
  horsepower: 322,
  condition: "New",
  price: 9200,
  description: "The BMW B58 3.0L Inline-6 Turbo engine is renowned for its smoothness and performance, commonly found in BMW 340i and Z4 models."
)

bmw_b58_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735545041/IMG_1330__28941_o4ze8v.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735545044/IMG_1332__53305_sg7az2.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735545046/IMG_1338__10138_qwrkor.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735545048/IMG_1342__92745_b3douz.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735545050/IMG_1343__13491_ta81yl.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735545052/IMG_1349__11809_ayjcv3.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735545054/IMG_1362__50300_ga1geq.jpg"
]

bmw_b58_photos.each do |url|
  bmw_b58.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "BMW B58 3.0L Inline-6 Turbo Engine",
  price: bmw_b58.price,
  description: bmw_b58.description,
  engineable: bmw_b58
)
nissan_vk56de = CarEngine.create!(
  year: "2010-2024",
  transmission: "Manual",
  mileage: 92000,
  fuel_type: "Gasoline",
  manufacturer: "Nissan",
  horsepower: 400,
  condition: "New",
  price: 10500,
  description: "The Nissan VK56DE 5.6L V8 engine delivers robust performance, making it ideal for large SUVs and trucks, such as the Nissan Titan and Armada."
)

nissan_vk56de_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735545665/IMG_3042__77668_lpbygu.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735545665/IMG_3041__78931_sg8hgz.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735545668/IMG_3044__51787_qfb4yx.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735545671/IMG_3051__40360_pgfopx.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735545672/IMG_3052__48119_zn2enb.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735545675/IMG_3056__50974_gn5jfv.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735545676/IMG_3058__41095_lgftwn.jpg"
]

nissan_vk56de_photos.each do |url|
  nissan_vk56de.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "Nissan VK56DE 5.6L V8 Engine",
  price: nissan_vk56de.price,
  description: nissan_vk56de.description,
  engineable: nissan_vk56de
)
audi_tfsi = CarEngine.create!(
  year: "2017-2024",
  transmission: "Manual",
  mileage: 50000,
  fuel_type: "Gasoline",
  manufacturer: "Audi",
  horsepower: 400,
  condition: "New",
  price: 10200,
  description: "The Audi 2.5L TFSI I5 turbocharged engine is celebrated for its high-performance capabilities, commonly used in the Audi RS3 and Audi TT RS."
)

audi_tfsi_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735545946/IMG_6843__88899_mihung.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735545958/IMG_6867__69326_pkub05.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735545957/IMG_6861__91255_c42j2m.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735545954/IMG_6860__83500_fhgeoy.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735545953/IMG_6857__96781_bdhzg3.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735545951/IMG_6853__35761_slqi2a.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735545947/IMG_6844__81473_obenik.jpg"
]

audi_tfsi_photos.each do |url|
  audi_tfsi.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "Audi 2.5L TFSI I5 Turbo Engine",
  price: audi_tfsi.price,
  description: audi_tfsi.description,
  engineable: audi_tfsi
)
toyota_iforce = CarEngine.create!(
  year: "2012-2020",
  transmission: "Manual",
  mileage: 89000,
  fuel_type: "Gasoline",
  manufacturer: "Toyota",
  horsepower: 381,
  condition: "New",
  price: 8800,
  description: "The Toyota 5.7L iForce V8 engine is known for its durability and horsepower, commonly used in the Toyota Tundra and Sequoia."
)

toyota_iforce_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735549306/engine-left-head-1_niokoa.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735549304/engine-front-timing-1_qhclws.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735549310/engine-valley-1_fx6n5j.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735549304/engine-front-timing-1_1_hrdtyh.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735549311/gasket-set-contents_ogfgrb.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735549314/gasket-set_tza397.jpg"
]

toyota_iforce_photos.each do |url|
  toyota_iforce.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "Toyota 5.7L iForce V8 Engine",
  price: toyota_iforce.price,
  description: toyota_iforce.description,
  engineable: toyota_iforce
)
porsche_v8 = CarEngine.create!(
  year: "2017-2024",
  transmission: "Manual",
  mileage: 100000,
  fuel_type: "Gasoline",
  manufacturer: "Porsche",
  horsepower: 541,
  condition: "New",
  price: 15000,
  description: "The Porsche 4.0L V8 Twin-Turbo engine offers exceptional horsepower and responsiveness, commonly found in the Porsche Panamera Turbo and Cayenne Turbo."
)

porsche_v8_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735554163/s-l1600_2_zm6zr5.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735554167/s-l1600_3_qojfcm.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735554161/s-l1600_1_hb5bfm.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735554158/s-l1600_7_rm97c6.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735554157/s-l1600_6_wlng7l.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735554115/s-l1600_4_mfcgru.webp"
]

porsche_v8_photos.each do |url|
  porsche_v8.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "PORSCHE OEM 13-14 Cayenne-Engine",
  price: porsche_v8.price,
  description: porsche_v8.description,
  engineable: porsche_v8
)

porche_panamera = CarEngine.create!(
  year: "2011",
  transmission: "Automatic",
  mileage: 34000,
  fuel_type: "Petrol",
  manufacturer: "Panamera (970)",
  horsepower: 541,
  condition: "New",
  price: 5000,
  description: "ORSCHE PANAMERA 970 Complete Engine Motor M4640 3.6 Petrol 220kw 2010-2013"
)
panamera_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735555114/s-l1600_9_wrtcgt.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735555117/s-l1600_11_lzm6kc.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735555118/s-l1600_10_w3rc9p.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735555033/s-l1600_8_hiiywo.webp"
]

panamera_urls.each do |url|
  porche_panamera.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
Engine.create!( title: "ORSCHE PANAMERA 970", price: porche_panamera.price, description: porche_panamera.description, engineable: porche_panamera  )

subaru_ej257 = CarEngine.create!(
  year: "2004-2024",
  transmission: "Manual",
  mileage: 39000,
  fuel_type: "Gasoline",
  manufacturer: "Subaru",
  horsepower: 300,
  condition: "Used",
  price: 5200,
  description: "Used Low Mileage Motor USDM, the car was bought for part out. the engine runs driven tested without any issue and we have a video compression of the engine as well if needed."
)

subaru_ej257_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735557289/s-l1600_12_hmsdic.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735557535/s-l1600_13_xhs6k0.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735557536/s-l1600_14_jv62fz.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735557539/s-l1600_16_wnijyi.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735557541/s-l1600_17_nrbdqi.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735557558/s-l1600_18_huidj8.webp"
]

subaru_ej257_photos.each do |url|
  subaru_ej257.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "Subaru EJ257 2.5L Turbo Engine",
  price: subaru_ej257.price,
  description: subaru_ej257.description,
  engineable: subaru_ej257
)
mercedes_m276 = CarEngine.create!(
  year: "2015-2019",
  transmission: "Manual",
  mileage: 78000,
  fuel_type: "Gasoline",
  manufacturer: "Mercedes-Benz",
  horsepower: 362,
  condition: "New",
  price: 12000,
  description: "The Mercedes-Benz M276 3.0L V6 Biturbo engine delivers exceptional performance, found in models like the E-Class and GLE-Class."
)

mercedes_m276_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735557930/s-l1600_2_ztjxub.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735557929/s-l1600_1_xt2aqo.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735557931/s-l1600_3_wbhzos.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735557939/s-l1600_4_wk6j2t.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735557940/s-l1600_5_r5ohyx.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735558026/s-l1600_6_ruqruj.webp"
]

mercedes_m276_photos.each do |url|
  mercedes_m276.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "Mercedes-Benz M276 3.0L V6 Biturbo Engine",
  price: mercedes_m276.price,
  description: mercedes_m276.description,
  engineable: mercedes_m276
)
bmw_m50 = CarEngine.create!(
  year: "1991-2000",
  transmission: "Manual",
  mileage: 140078,
  fuel_type: "Gasoline",
  manufacturer: "BMW",
  horsepower: 189,
  condition: "Used",
  price: 2500,
  description: "The BMW M50 2.5L Inline-6 engine is a highly regarded engine, offering smooth horsepower delivery and performance, used in models like the BMW 325i."
)

bmw_m50_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735558159/s-l1600_7_et1qq8.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735558160/s-l1600_8_zuiyp0.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735558163/s-l1600_9_hzujma.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735558164/s-l1600_10_xb5bpo.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735558168/s-l1600_11_lyqum5.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735558170/s-l1600_12_x1lfrl.webp"
]

bmw_m50_photos.each do |url|
  bmw_m50.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "BMW M50 2.5L Inline-6 Engine",
  price: bmw_m50.price,
  description: bmw_m50.description,
  engineable: bmw_m50
)

ford_coyote = CarEngine.create!(
  year: "2011-2024",
  transmission: "Manual",
  mileage: 52000,
  fuel_type: "Gasoline",
  manufacturer: "Ford",
  horsepower: 435,
  condition: "Used",
  price: 9000,
  description: "The Ford 5.0L Coyote V8 engine is known for its performance and reliability, often used in the Ford Mustang GT and F-150."
)

ford_coyote_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735559180/s-l1600_13_or0ndh.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735559180/s-l1600_13_or0ndh.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735559190/s-l1600_20_ncvcmo.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735559188/s-l1600_19_jrjbvc.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735559186/s-l1600_18_xo2ymo.webp"
]

ford_coyote_photos.each do |url|
  ford_coyote.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "Ford 5.0L Coyote V8 Engine",
  price: ford_coyote.price,
  description: ford_coyote.description,
  engineable: ford_coyote
)
honda_k20 = CarEngine.create!(
  year: "2001-2011",
  transmission: "Automatic",
  mileage: 63200,
  fuel_type: "Gasoline",
  manufacturer: "Honda",
  horsepower: 200,
  condition: "Used",
  price: 3500,
  description: "The Honda K20 2.0L Inline-4 engine is popular for its performance and efficiency, used in models like the Honda Civic Si and Acura RSX Type-S."
)

honda_k20_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735559509/s-l1600_21_qsdkwz.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735559510/s-l1600_22_edpyez.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735559511/s-l1600_23_fvkf4h.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735559516/s-l1600_25_utxcrz.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735559519/s-l1600_27_gr9u7z.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735559520/s-l1600_28_fiun5g.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735559523/s-l1600_29_ajcaif.webp"
]

honda_k20_photos.each do |url|
  honda_k20.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end


Engine.create!(
  title: "Honda Accord K24A 2.4L Engine ",
  price: honda_k20.price,
  description: honda_k20.description,
  engineable: honda_k20
)

puts "Just Created #{Engine.count} engines"
nissan_vk56 = CarEngine.create!(
  year: "2004-2024",
  transmission: "Automatic",
  mileage: 89000,
  fuel_type: "Gasoline",
  manufacturer: "Nissan Titan",
  horsepower: 317,
  condition: "Used",
  price: 1500,
  description: "The Nissan VK56DE 5.6L V8 engine is a reliable engine used in Nissan Titan trucks and Armada SUVs, known for its towing capacity and endurance."
)

nissan_vk56_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735561406/s-l1600_1_os3iog.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735561408/s-l1600_2_h6g1hb.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735561409/s-l1600_3_b7kgcs.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735561415/s-l1600_ezglsn.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735561413/s-l1600_5_dz8uqi.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735561409/s-l1600_4_nasxoi.webp"
]

nissan_vk56_photos.each do |url|
  nissan_vk56.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "Nissan VK56DE 5.6L V8 Engine",
  price: nissan_vk56.price,
  description: nissan_vk56.description,
  engineable: nissan_vk56
)
audi_25tdi = CarEngine.create!(
  year: "2011-2017",
  transmission: "Automatic",
  mileage: 65000,
  fuel_type: "Gasoline",
  manufacturer: "Audi",
  horsepower: 190,
  condition: "Used",
  price: 4000,
  description: "The Audi 2.5 TDI V6 engine is known for its smooth horsepower delivery and excellent fuel efficiency, used in Audi A6 and Q5 models."
)

audi_25tdi_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735561835/s-l1600_6_loozaz.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735561832/s-l1600_10_p0mfhs.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735561830/s-l1600_9_mmj0wy.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735561827/s-l1600_8_p6qsp0.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735561827/s-l1600_7_djrcg9.webp"
]

audi_25tdi_photos.each do |url|
  audi_25tdi.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "Audi 2.5 TDI V6 Engine",
  price: audi_25tdi.price,
  description: audi_25tdi.description,
  engineable: audi_25tdi
)
mazda_skyactiv = CarEngine.create!(
  year: "2012-2024",
  transmission: "Automatic",
  mileage: 78100,
  fuel_type: "Petrol",
  manufacturer: "Mazda",
  horsepower: 155,
  condition: "Used",
  price: 800,
  description: "The Mazda SKYACTIV-G 2.0L engine is a high-efficiency engine used in Mazda3, Mazda6, MAZDA CX3, 2.0, 109 KW, PE-VPS, SkyActiv-G, DK, 03/15-07/18 15 16 delivering a great balance between performance and fuel economy."
)

mazda_skyactiv_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735562571/s-l1600_11_l7dwpe.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735562589/s-l1600_12_p1ss83.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735562603/s-l1600_16_pj7pqs.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735562611/s-l1600_14_jernlb.webp"
]

mazda_skyactiv_photos.each do |url|
  mazda_skyactiv.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "Mazda SKYACTIV-G 2.0L Inline-4 Engine",
  price: mazda_skyactiv.price,
  description: mazda_skyactiv.description,
  engineable: mazda_skyactiv
)
volkswagen_2_0t = CarEngine.create!(
  year: "2010-2020",
  transmission: "Automatic",
  mileage: 54000,
  fuel_type: "Gasoline",
  manufacturer: "Volkswagen",
  horsepower: 200,
  condition: "Used",
  price: 4200,
  description: "The EA888 2.0T engine is a turbocharged horsepowerhouse found in many Volkswagen and Audi models, known for its excellent performance and tuning potential."
)

volkswagen_2_0t_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735562947/s-l1600_4_rmgk0s.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735562952/s-l1600_p3rt6l.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735562945/s-l1600_3_dlaxms.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735562949/s-l1600_5_r1yvwd.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735562942/s-l1600_2_uogozu.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735562941/s-l1600_1_y1r63t.webp"
]

volkswagen_2_0t_photos.each do |url|
  volkswagen_2_0t.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "Volkswagen EA888 2.0T Inline-4 Engine",
  price: volkswagen_2_0t.price,
  description: volkswagen_2_0t.description,
  engineable: volkswagen_2_0t
)
lotus_2grfe = CarEngine.create!(
  year: "2005-2020",
  transmission: "Automatic",
  mileage: 47000,
  fuel_type: "Gasoline",
  manufacturer: "Lotus",
  horsepower: 268,
  condition: "Used",
  price: 7900,
  description: "GENUINE LOTUS EVORA S3 EXIGE TOYOTA 2GR-FE 3.5L V6 SC ENGINE BARE ev1"
)

lotus_2grfe_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735564120/s-l1600_6_qowbav.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735564115/s-l1600_11_a7isee.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735564123/s-l1600_sfvekw.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735564113/s-l1600_7_csqhux.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735564110/s-l1600_9_lbj6vh.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735564113/s-l1600_10_be2otx.webp"
]

lotus_2grfe_photos.each do |url|
  lotus_2grfe.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "Toyota 2GR-FE 3.5L V6 Engine",
  price: lotus_2grfe.price,
  description: lotus_2grfe.description,
  engineable: lotus_2grfe
)

subaru_ej25 = CarEngine.create!(
  year: "2011-2020",
  transmission: "Automatic",
  mileage: 133835,
  fuel_type: "Gasoline",
  manufacturer: "Subaru",
  horsepower: 170,
  condition: "Used",
  price: 1800,
  description: "The Subaru EJ25 2.5L Boxer-4 engine offers a low center of gravity, great for Subaru's AWD models like the Impreza and Forester."
)

subaru_ej25_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735564935/s-l1600_20_m4vvxt.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735564933/s-l1600_19_plm0c8.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735564717/s-l1600_18_r1baoj.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735564714/s-l1600_17_eeuo5s.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735564712/s-l1600_16_zrxtiw.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735564709/s-l1600_14_z0yuih.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735564708/s-l1600_13_x8a9ju.webp"
]

subaru_ej25_photos.each do |url|
  subaru_ej25.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "Subaru EJ25 2.5L Boxer-4 Engine",
  price: subaru_ej25.price,
  description: subaru_ej25.description,
  engineable: subaru_ej25
)
honda_k20a = CarEngine.create!(
  horsepower: 215,
  fuel_type: "Gasoline",
  transmission: "Manual",
  mileage: 55000,
  manufacturer: "Honda",
  year: "2006-2011",
  price: 3200,
  condition: "Used",
  description: "06 07 08 09 10 11 Honda Civic SI K24A 2.4l 200HP Replacement K20A Engine JDM -. Known for reliability and tunability, it’s a favorite for racers."
)

honda_k20a_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735594562/s-l1600_3_rmtrnq.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735594566/s-l1600_5_w1lgtw.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735594578/s-l1600_6_pekzbb.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735594563/s-l1600_4_uyspzd.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735594583/s-l1600_7_ztc2pb.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735594591/s-l1600_8_ttkuzr.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735594599/s-l1600_9_h3ulna.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735594603/s-l1600_10_o2nce6.webp"
]

honda_k20a_photos.each do |url|
  honda_k20a.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "Honda K20A 2.0L I4 Engine",
  price: honda_k20a.price,
  description: honda_k20a.description,
  engineable: honda_k20a
)
ford_coyote = CarEngine.create!(
  horsepower: 450,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 20000,
  manufacturer: "Ford",
  year: "2015-2022",
  price: 7500,
  condition: "Used",
  description: "The Ford Coyote 5.0L V8 is a powerhouse engine used in modern Ford Mustangs, offering high output and reliability for performance enthusiasts."
)

ford_coyote_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735595322/ford_5.0-liter-coyote-v8_236a1873-db65-402a-81eb-c8280a9bf62b-15326_xjlpx4.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735595319/0821C2C1-1F4C-4354-9CC1-BEBA27F34A20-59446-scaled_zphdss.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735595315/46DD1179-A6F4-4EDB-B46D-8BB573638894-59437-scaled_bapury.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735595307/ford_5.0-liter-coyote-v8_81aa1765-7a1d-4704-a2fc-c09440af0e83-15655_1_gnawf7.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735595211/9D90291A-777C-4DC5-96F6-5F514789946C-59400-scaled_agubz7.webp"
]

ford_coyote_photos.each do |url|
  ford_coyote.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "Ford Coyote 5.0L V8 Engine",
  price: ford_coyote.price,
  description: ford_coyote.description,
  engineable: ford_coyote
)
bmw_n54 = CarEngine.create!(
  horsepower: 335,
  fuel_type: "Gasoline",
  transmission: "Manual",
  mileage: 60000,
  manufacturer: "BMW",
  year: "2006-2016",
  price: 4800,
  condition: "Used",
  description: "The BMW N54 engine is a twin-turbocharged inline-6 known for its smooth power delivery and excellent tuning potential. Used in BMW 335i and 135i models."
)

bmw_n54_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735595697/s-l1600_1_ungfx7.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735595693/s-l1600_2_te2gxv.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735595690/s-l1600_5_fd0gju.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735595688/s-l1600_6_qoo7hr.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735595684/s-l1600_4_luxvii.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735595681/s-l1600_3_oyakeh.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735595678/s-l1600_8_oyxpi3.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735595676/s-l1600_t4eqi7.jpg"
]

bmw_n54_photos.each do |url|
  bmw_n54.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "BMW N54 3.0L Twin-Turbo I6 Engine",
  price: bmw_n54.price,
  description: bmw_n54.description,
  engineable: bmw_n54
)
chevrolet_ls7 = CarEngine.create!(
  horsepower: 505,
  fuel_type: "Gasoline",
  transmission: "Automatic",
  mileage: 15000,
  manufacturer: "Chevrolet",
  year: "2006-2013",
  price: 20000,
  condition: "New",
  description: "The LS7 7.0L V8 is a performance engine from the Chevrolet Corvette Z06, offering high horsepower and durability for race-inspired driving."
)

chevrolet_ls7_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735596264/s-l1600_11_izgwua.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735596261/s-l1600_12_crn2ub.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735596257/s-l1600_13_il8jmr.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735596253/s-l1600_14_spr6za.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735596252/s-l1600_16_oieebi.webp"
]

chevrolet_ls7_photos.each do |url|
  chevrolet_ls7.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "Chevrolet LS7 7.0L V8 Engine",
  price: chevrolet_ls7.price,
  description: chevrolet_ls7.description,
  engineable: chevrolet_ls7
)
puts "Now we have #{Engine.count} engines"