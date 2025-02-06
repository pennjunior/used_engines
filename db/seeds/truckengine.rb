require 'open-uri'

# Truck 1
truck1 = TruckEngine.create!(
  towing_capacity: 12000,
  engine_type: "EcoBoost V6",
  fuel_type: "Gasoline",
  mileage: 50000,
  manufacturer: "Ford",
  year: "2020",
  price: 2500,
  condition: "Used",
  description: "Ford F-150 EcoBoost 3.5L V6 engine, built for power and fuel efficiency."
)

truck1_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735384685/s-l1600_poolkp.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735384685/s-l1600_4_u5zw3k.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735384685/s-l1600_2_xmmghf.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735384685/s-l1600_3_d1iyxh.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735384685/s-l1600_1_qmojlh.webp"
]

truck1_urls.each do |url|
  truck1.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end

Engine.create!(
  title: "Ford F-150 EcoBoost 3.5L Engine",
  price: truck1.price,
  description: truck1.description,
  engineable: truck1
)

# Truck 2
truck2 = TruckEngine.create!(
  towing_capacity: 17000,
  engine_type: "Inline-6",
  fuel_type: "Diesel",
  mileage: 80000,
  manufacturer: "Cummins",
  year: "2019",
  price: 5200,
  condition: "Rebuilt",
  description: "Cummins 6.7L Diesel engine, a workhorse for heavy-duty trucks."
)

truck2_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735448105/s-l1600_8_hukmst.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735448105/s-l1600_7_xbxl65.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735448105/s-l1600_10_v1fsuz.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735448105/s-l1600_5_ygraf7.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735448105/s-l1600_6_wovxvw.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735448106/s-l1600_11_uouhwm.webp"
]

truck2_urls.each do |url|
  truck2.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end

Engine.create!(
  title: "Cummins 6.7L Diesel Engine",
  price: truck2.price,
  description: truck2.description,
  engineable: truck2
)

# Truck 3
truck3 = TruckEngine.create!(
  towing_capacity: 18500,
  engine_type: "Duramax V8",
  fuel_type: "Diesel",
  mileage: 60000,
  manufacturer: "Duramax",
  year: "2021",
  price: 6000,
  condition: "Used",
  description: "Duramax 6.6L Diesel V8 engine, excellent for towing and long-distance hauling."
)

truck3_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735448414/IMG-6330_1024x1024_2x_coy1wf.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735448414/IMG-6332_1024x1024_2x_v7szir.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735448415/IMG-6331_1024x1024_2x_a8w769.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735448415/IMG-6334_1024x1024_2x_yiibey.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735448415/IMG-6336_1024x1024_2x_kjrt7n.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735448415/IMG-6333_1024x1024_2x_hattpg.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735448415/IMG-6335_1024x1024_2x_etkxax.webp"
]

truck3_urls.each do |url|
  truck3.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end

Engine.create!(
  title: "Duramax 6.6L Diesel V8 Engine",
  price: truck3.price,
  description: truck3.description,
  engineable: truck3
)

cummins_isx15 = TruckEngine.create!(
  year: "2010-2024",
  engine_type: "Inline-6 Turbocharged",
  fuel_type: "Diesel",
  manufacturer: "Cummins",
  towing_capacity: 80000, # Added attribute
  mileage: 0,             # Added attribute
  price: 18000,
  condition: "New",
  description: "The ISX15 is a heavy-duty Cummins engine with unmatched reliability and performance. Its advanced fuel system optimizes efficiency while maintaining high power output for extreme hauling tasks."
)
cummins_isx15_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735607833/2_dyhjgh.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735607829/3_fjtpzk.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735607826/4_nctohw.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735607823/5_vnvib6.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735607820/6_pirsgp.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735607816/7_dfamfc.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735607815/8_xphrak.webp"
]
cummins_isx15_photos.each do | url|
  cummins_isx15.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "Cummins ISX15 Truck Engine",
  price: cummins_isx15.price,
  description: cummins_isx15.description,
  engineable: cummins_isx15
)

cummins_67 = TruckEngine.create!(
  year: "2007-2024",
  engine_type: "Turbocharged Inline-6",
  fuel_type: "Diesel",
  manufacturer: "Cummins",
  towing_capacity: 70000, # Added attribute
  mileage: 0,             # Added attribute
  price: 10000,
  condition: "New",
  description: "Cummins QSF 3.8 Turbo Diesel Engine Factory New Surplus! Unused QSF3.8 is renowned for its durability, high torque output, and reliability, making it a favorite for heavy-duty trucks."
)
cummins_67_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735636815/s-l1600_4_ftkqhq.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735636816/s-l1600_2_i033wb.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735636814/s-l1600_5_k4thvo.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735636815/s-l1600_3_jlew0y.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735636816/s-l1600_1_bpvevn.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735636816/s-l1600_cm3nq3.webp"
]
cummins_67_photos.each do |url|
  cummins_67.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
Engine.create!(
  title: "Cummins QSF 3.8 Turbo Diesel Engine ",
  price: cummins_67.price,
  description: cummins_67.description,
  engineable: cummins_67
)

ford_powerstroke_67 = TruckEngine.create!(
  year: "2011-2024",
  engine_type: "Turbocharged V8",
  fuel_type: "Diesel",
  manufacturer: "Ford",
  towing_capacity: 75000, # Added attribute
  mileage: 0,             # Added attribute
  price: 14500,
  condition: "New",
  description: "The Ford Power Stroke 6.7L V8 delivers incredible towing power and fuel efficiency, a top choice for heavy-duty Ford trucks."
)
ford_powerstroke_67_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735608515/IMG_6677_1200x_vwkhzk.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735608511/IMG_1788_1264x_gvnzcq.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735608508/6.7longy_929x_hlr3e9.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735608506/IMG_6678_1200x_zmzfca.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735608502/6.7long_797x_vydny0.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735608500/IMG_6681_1200x_rieu4n.webp"
]
ford_powerstroke_67_photos.each do |url|
  ford_powerstroke_67.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
Engine.create!(
  title: "Ford Power Stroke 6.7L Turbo Diesel V8",
  price: ford_powerstroke_67.price,
  description: ford_powerstroke_67.description,
  engineable: ford_powerstroke_67
)

duramax_66 = TruckEngine.create!(
  year: "2001-2024",
  engine_type: "Turbocharged V8",
  fuel_type: "Diesel",
  manufacturer: "Duramax",
  towing_capacity: 70000, # Added attribute
  mileage: 0,             # Added attribute
  price: 9000,
  condition: "New",
  description: "A highly reliable and powerful engine, the Duramax 6.6L V8 is a top performer in Chevrolet and GMC heavy-duty trucks."
)
duramax_66_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735608832/Used-2008-GM-Chev-_HD_-6.6L-DURAMAX-Engine-Assy-5BRDvB6Z0DTa_f_sfpahg.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735608831/Used-2008-GM-Chev-_HD_-6.6L-DURAMAX-Engine-Assy-BTzQXuxu80DW_f_ueko4i.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735608836/Used-2008-GM-Chev-_HD_-6.6L-DURAMAX-Engine-Assy-yjaq3JEuTgao_f_bvyhdt.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735608846/Used-2008-GM-Chev-_HD_-6.6L-DURAMAX-Engine-Assy-Zq4MH7jYwaX2_f_vfxyat.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735608843/Used-2008-GM-Chev-_HD_-6.6L-DURAMAX-Engine-Assy-vJLZ9ZKtDxGP_f_t0lxum.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735608840/Used-2008-GM-Chev-_HD_-6.6L-DURAMAX-Engine-Assy-21tdBRcZLUqB_f_daft2c.webp"
]
duramax_66_photos.each do |url|
  duramax_66.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
Engine.create!(
  title: "Duramax 6.6L Turbo Diesel V8",
  price: duramax_66.price,
  description: duramax_66.description,
  engineable: duramax_66
)

detroit_series60 = TruckEngine.create!(
  year: "1987-2011",
  engine_type: "Inline-6",
  fuel_type: "Diesel",
  manufacturer: "Detroit Diesel",
  towing_capacity: 70000, # Added attribute
  mileage: 200000,        # Added attribute
  price: 9500,
  condition: "Used",
  description: "A workhorse engine for heavy-duty trucks and commercial vehicles, known for its reliability and fuel efficiency."
)
detroit_series60_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735609076/s-l1600_3_qjxppm.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735609083/s-l1600_1_s6u4xp.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735609079/s-l1600_2_rg9vb2.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735609076/s-l1600_3_qjxppm.webp"
]
detroit_series60_photos.each do |url|
  detroit_series60.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
Engine.create!(
  title: "Detroit Diesel Series 60",
  price: detroit_series60.price,
  description: detroit_series60.description,
  engineable: detroit_series60
)

paccar_mx13 = TruckEngine.create!(
  year: "2010-2024",
  engine_type: "Turbocharged Inline-6",
  fuel_type: "Diesel",
  manufacturer: "PACCAR",
  towing_capacity: 80000, # Added attribute
  mileage: 80000,             # Added attribute
  price: 11000,
  condition: "Used",
  description: "Designed for Kenworth and Peterbilt trucks, the MX-13 combines power, fuel efficiency, and longevity for long hauls."
)
paccar_mx13_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735609349/Engines-Paccar-MX-13-46465620_1_wslgbj.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735609348/Engines-Paccar-MX-13-46465619_pileqz.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735609348/Engines-Paccar-MX-13-46465622_sshshf.jpg"
]
paccar_mx13_photos.each do |url|
  paccar_mx13.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
Engine.create!(
  title: "PACCAR MX-13",
  price: paccar_mx13.price,
  description: paccar_mx13.description,
  engineable: paccar_mx13
)

mack_mp8 = TruckEngine.create!(
  year: "2007-2024",
  engine_type: "Inline-6 Turbocharged",
  fuel_type: "Diesel",
  manufacturer: "Mack",
  towing_capacity: 85000, # Added attribute
  mileage: 0,             # Added attribute
  price: 15500,
  condition: "New",
  description: "Built for durability and fuel efficiency, the Mack MP8 is ideal for long-haul trucks and heavy-duty applications. Its strong torque makes it a top performer in the trucking industry."
)
mack_mp8_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735609570/s-l1600_6_a9tzi3.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735609571/s-l1600_8_vbvs8q.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735609571/s-l1600_7_fwamww.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735609571/s-l1600_4_pykjfh.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735609571/s-l1600_5_lozew6.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735609571/s-l1600_9_awpq5b.webp"
]
mack_mp8_photos.each do |url|
  mack_mp8.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
Engine.create!(
  title: "Mack MP8 Truck Engine",
  price: mack_mp8.price,
  description: mack_mp8.description,
  engineable: mack_mp8
)

volvo_d13 = TruckEngine.create!(
  year: "2011-2024",
  engine_type: "Inline-6 Turbocharged",
  fuel_type: "Diesel",
  manufacturer: "Volvo",
  towing_capacity: 80000, # Added attribute
  mileage: 0,             # Added attribute
  price: 12000,
  condition: "New",
  description: "The Volvo D13 is designed to deliver excellent fuel efficiency and high torque for heavy-duty truck applications. Its advanced technology ensures reduced emissions and improved performance."
)
volvo_d13_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735610418/volvo-d7e-290-engine-complete-diesel_2_pyamlh.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735610418/volvo-d7e-290-engine-complete-diesel_4_tyumk3.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735610418/volvo-d7e-290-engine-complete-diesel_3_vrwxu5.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735610418/volvo-d7e-290-engine-complete-diesel_1_fswqej.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735610418/volvo-d7e-290-engine-complete-diesel_z2sar5.jpg"
]
volvo_d13_photos.each do |url|
  volvo_d13.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
Engine.create!(
  title: "Volvo D13 Truck Engine",
  price: volvo_d13.price,
  description: volvo_d13.description,
  engineable: volvo_d13
)
cummins_isx15 = TruckEngine.create!(
  year: "2010-2024",
  engine_type: "Inline-6 Turbocharged",
  fuel_type: "Diesel",
  manufacturer: "Cummins",
  towing_capacity: 80000,
  condition: "New",
  price: 18000,
  description: "The ISX15 is a heavy-duty Cummins engine with unmatched reliability and performance. Its advanced fuel system optimizes efficiency while maintaining high power output for extreme hauling tasks."
)

cummins_isx15_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735610913/ISX15450CumminsEngine_2022-02_1_t_1400x_rhfqno.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735610913/ISX15450CumminsEngine_2022-02_2_t_1400x_jpu6rr.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735610913/ISX15450CumminsEngine_2022-02_3_t_1400x_apm3wx.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735610913/ISX15450CumminsEngine_2022-02_4_t_1400x_rtcilt.jpg"
]

cummins_isx15_photos.each do |url|
  cummins_isx15.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "Cummins ISX15 Truck Engine",
  price: cummins_isx15.price,
  description: cummins_isx15.description,
  engineable: cummins_isx15
)

hino_j08e = TruckEngine.create!(
  year: "2015-2024",
  engine_type: "Inline-6",
  fuel_type: "Diesel",
  manufacturer: "Hino",
  towing_capacity: 33000,
  condition: "New",
  price: 11000,
  description: "The Hino J08E engine offers a balance of power, fuel efficiency, and reliability. It is widely used in medium-duty trucks and is engineered for long-lasting performance."
)

hino_j08e_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735611226/s-l1600_19_pjczkd.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735611228/s-l1600_16_fllmuw.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735611227/s-l1600_18_exc6hy.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735611227/s-l1600_17_gpbrlu.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735611228/s-l1600_13_f2b9ri.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735611228/s-l1600_12_poizju.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735611228/s-l1600_11_ogauiq.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735611229/s-l1600_14_mwypjh.webp"
]

hino_j08e_photos.each do |url|
  hino_j08e.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "Hino J08E Truck Engine",
  price: hino_j08e.price,
  description: hino_j08e.description,
  engineable: hino_j08e
)

detroit_dd15 = TruckEngine.create!(
  year: "2007-2024",
  engine_type: "Inline-6 Turbocharged",
  fuel_type: "Diesel",
  manufacturer: "Detroit Diesel",
  towing_capacity: 80000,
  condition: "New",
  price: 14000,
  description: "The Detroit Diesel DD15 offers excellent fuel efficiency and durability. It's a preferred engine for long-haul trucks due to its advanced emissions technology and high torque output."
)

detroit_dd15_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735612217/DD15-Long-Block-Engine-4_yvu9tv.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735612216/DD15-Long-Block-rotated_uqadyv.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735612216/DD15-Long-Block-Engine-6_cs01xf.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735612360/DD15-Long-Block-Engine-7_utkw3g.jpg"
]

detroit_dd15_photos.each do |url|
  detroit_dd15.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "Detroit Diesel DD15 Truck Engine",
  price: detroit_dd15.price,
  description: detroit_dd15.description,
  engineable: detroit_dd15
)

paccar_mx13 = TruckEngine.create!(
  year: "2010-2024",
  engine_type: "Inline-6 Turbocharged",
  fuel_type: "Diesel",
  manufacturer: "PACCAR",
  towing_capacity: 80000,
  condition: "New",
  price: 15000,
  description: "The PACCAR MX-13 is designed for maximum fuel efficiency and high performance. It’s commonly used in Kenworth and Peterbilt trucks for long-haul and heavy-duty operations."
)

paccar_mx13_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735612511/s-l1600_23_xi6mpe.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735612512/s-l1600_22_wwptj6.webp",
  'https://res.cloudinary.com/drxr1eiwp/image/upload/v1735612513/s-l1600_20_ohyrmb.webp',
  'https://res.cloudinary.com/drxr1eiwp/image/upload/v1735612513/s-l1600_21_rqig3m.webp'
]

paccar_mx13_photos.each do |url|
  paccar_mx13.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "PACCAR MX-13 Truck Engine",
  price: paccar_mx13.price,
  description: paccar_mx13.description,
  engineable: paccar_mx13
)

detroit_ddec4 = TruckEngine.create!(
  year: "2017-2024",
  engine_type: "Diesel",
  fuel_type: "Diesel",
  manufacturer: "Detroit Diesel",
  towing_capacity: 60000,
  condition: "Used",
  price: 5500,
  description: "Designed for improved fuel economy and lower emissions, the Cummins X15 Efficiency Series is a versatile engine for regional and long-haul trucking. Its advanced technology ensures durability and performance."
)

detroit_ddec4_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735612836/s-l1600_27_vqaeej.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735612838/s-l1600_26_uzrpeh.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735612838/s-l1600_25_emdd1b.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735612839/s-l1600_24_htwvee.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735612782/s-l1600_28_qenyed.webp"
]

detroit_ddec4_photos.each do |url|
  detroit_ddec4.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "Detroit Diesel Series 60 12.7 DDEC4 EGR Engine",
  price: detroit_ddec4.price,
  description: detroit_ddec4.description,
  engineable: detroit_ddec4
)

ford_powerstroke = TruckEngine.create!(
  year: "2011-2024",
  engine_type: "V8 Turbocharged",
  fuel_type: "Diesel",
  manufacturer: "Ford",
  towing_capacity: 35000,
  condition: "New",
  price: 12500,
  description: "The Ford Power Stroke 6.7L V8 engine is engineered for towing and hauling, delivering high torque and outstanding durability for Ford Super Duty trucks."
)

ford_powerstroke_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735637765/s-l1600_7_rdtlig.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735637765/s-l1600_6_ake0sh.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735637765/s-l1600_8_uz7zpn.webp"
]

ford_powerstroke_photos.each do |url|
  ford_powerstroke.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

Engine.create!(
  title: "Ford Power Stroke 6.7L Truck Engine",
  price: ford_powerstroke.price,
  description: ford_powerstroke.description,
  engineable: ford_powerstroke
)
