puts "Has #{Car.count} cars available"
total_cars = 41

# Initialize the progress bar
progressbar = ProgressBar.create(total: total_cars, format: "%a %bᗧ%i %p%% %t")


vw_golf = Car.create!(
  category: "Hatchback",
  make: "Volkswagen",
  model: "Golf TSI",
  year: 2015,
  price: 5900.00,
  engine_type: "Inline-4 Turbocharged",
  fuel_type: "Petrol",
  engine_size: 1400,
  seats: 5,
  doors: 5,
  transmission: "Automatic",
  drivetrain: "Front-wheel drive",
  registration_year: "2019/6",
  dimension: "4.28×1.79×1.45 m",
  chassis_no: "125,904",
  engine_code: "EA211",
  steering: "Left",
  ext_color: "White",
  location: "Germany",
  weight: 1250,
  version_class: "Highline",
  max_capacity: "450 kg",
  description: "The Volkswagen Golf TSI is a versatile and reliable hatchback with a premium interior and advanced driving aids.",
  condition: "Used",
  availability: true
)

vw_golf_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735803791/img-1-960x_j2b7qg.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735803790/img-11-960x_vtq5rw.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735803791/img-10-960x_n810gf.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735803791/img-4-960x_eltgop.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735803792/img-2-960x_twwbcp.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735803791/img-3-960x_rnu6ft.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735803790/img-5-960x_aqr6pk.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735803790/img-37-960x_kyuuaq.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735803790/img-7-960x_fauifn.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735803790/img-14-960x_lft3ed.avif"
]
vw_golf_photos.each do |url|
  vw_golf.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

progressbar.increment



bmw_3series = Car.create!(
  category: "Sedan",
  make: "BMW",
  model: "3 Series Gran Turismo",
  year: 2015,
  price: 8900.00,
  engine_type: "Inline-4 Turbocharged Diesel",
  fuel_type: "Diesel",
  engine_size: 2000,
  seats: 5,
  doors: 4,
  transmission: "Automatic",
  drivetrain: "Rear-wheel drive",
  registration_year: "2018/4",
  dimension: "4.70×1.82×1.44 m",
  chassis_no: "69,000",
  engine_code: "B47D20",
  steering: "Left",
  ext_color: "Alpine White",
  location: "France",
  weight: 1450,
  version_class: "M Sport",
  max_capacity: "450 kg",
  description: "The BMW 3 Series combines dynamic performance with luxury and cutting-edge technology, making it a European favorite.",
  condition: "Used",
  availability: true
)

bmw_3series_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735804289/img-1-960x_sngnte.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735804289/img-6-960x_atw22a.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735804287/img-47-960x_s7dtz1.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735804287/img-46-960x_vqiwot.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735804287/img-44-960x_gx2irn.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735804289/img-10-960x_1_vfvmdu.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735804289/img-8-960x_fn6ium.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735804288/img-14-960x_pm3ufz.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735804288/img-13-960x_ffjxwi.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735804288/img-19-960x_gg8wsq.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735804288/img-23-960x_drttpk.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735804288/img-20-960x_cxinox.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735804287/img-26-960x_ejerpk.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735804287/img-33-960x_elwxgp.jpg"
]
bmw_3series_photos.each do |url|
  bmw_3series.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

progressbar.increment



audi_a4_avant = Car.create!(
  category: "Sedan",
  make: "Audi",
  model: "A4 Avant",
  year: 2021,
  price: 15900.00,
  engine_type: "Inline-4 Turbocharged Diesel",
  fuel_type: "Diesel",
  engine_size: 2000,
  seats: 5,
  doors: 5,
  transmission: "Automatic",
  drivetrain: "Front-wheel drive",
  registration_year: "2017/9",
  dimension: "4.73×1.84×1.43 m",
  chassis_no: "34,610",
  engine_code: "CYMC",
  steering: "Left",
  ext_color: "Navarra Blue Metallic",
  location: "Netherlands",
  weight: 1500,
  version_class: "Ultra",
  max_capacity: "480 kg",
  description: "The Audi A4 Avant Ultra is a practical yet stylish wagon, ideal for families seeking efficiency and comfort.",
  condition: "Used",
  availability: true
)

audi_a4_avant_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735805450/img-3-960x_pjtsqd.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735805446/img-4-960x_hqmiwx.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735805446/img-6-960x_1_mdqov3.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735805446/img-5-960x_anyrqr.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735805445/img-7-960x_bqdhyv.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735805445/img-10-960x_2_wampvc.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735805445/img-8-960x_1_d0cv2f.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735805444/img-16-960x_ml7jsc.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735805445/img-9-960x_qvfaqh.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735805444/img-11-960x_v9f9zc.jpg"
]
audi_a4_avant_photos.each do |url|
  audi_a4_avant.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

progressbar.increment



renault_clio = Car.create!(
  category: "SUV",
  make: "Renault",
  model: "Kiger 1.0 Turbo Intens",
  year: 2020,
  price: 15900.00,
  engine_type: "Inline-4",
  fuel_type: "Petrol",
  engine_size: 1000,
  seats: 5,
  doors: 5,
  transmission: "Manual",
  drivetrain: "Front-wheel drive",
  registration_year: "2020/3",
  dimension: "4.05×1.79×1.44 m",
  chassis_no: "43,025",
  engine_code: "H4D",
  steering: "Left",
  ext_color: "Red",
  location: "France",
  weight: 1150,
  version_class: "Intens",
  max_capacity: "400 kg",
  description: "The Renault Clio Intens offers sleek styling, advanced connectivity, and a fun driving experience in a compact package.",
  condition: "Used",
  availability: true
)

renault_clio_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735805946/35349507_pcr7fi.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735805950/35349505_ktm6j4.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735805949/35349509_jhxzl6.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735805949/35349510_wcd0ke.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735805949/35349504_nbrg8m.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735805948/35349502_csmkum.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735805948/35349508_fjhjbb.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735805949/35349500_wdt47i.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735805946/35349499_bwqyvq.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735805947/35349515_kpvar4.jpg"
]
renault_clio_photos.each do |url|
  renault_clio.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

progressbar.increment



mercedes_cclass = Car.create!(
  category: "Sedan",
  make: "Mercedes-Benz",
  model: "C-Class C220d AMG Line",
  year: 2014,
  price: 8900.00,
  engine_type: "Inline-4 Turbocharged Diesel",
  fuel_type: "Fuel",
  engine_size: 2100,
  seats: 5,
  doors: 4,
  transmission: "Automatic",
  drivetrain: "Rear-wheel drive",
  registration_year: "2016/5",
  dimension: "4.68×1.81×1.44 m",
  chassis_no: "54,000",
  engine_code: "OM651",
  steering: "Right",
  ext_color: "White",
  location: "Japan",
  weight: 1550,
  version_class: "AMG Line",
  max_capacity: "450 kg",
  description: "The Mercedes-Benz C-Class AMG Line offers luxurious features and a dynamic diesel engine for both city and long-distance drives.",
  condition: "Used",
  availability: true
)

mercedes_cclass_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735809151/IMG_9155_ohkeuj.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735809149/IMG_9154_oc16mu.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735809148/IMG_9153_vzonxz.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735809147/IMG_9157_laj0dk.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735809128/IMG_9158_k7ng1m.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735809148/IMG_9156_klnrqf.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735809127/IMG_9159_qk10la.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735809127/IMG_9161_xlqpqc.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735809128/IMG_9160_flibxa.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735809124/IMG_9163_ygfsgq.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735809123/IMG_9162_ooc1eg.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735809122/IMG_9165_zognge.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735809122/IMG_9164_j9i4e9.jpg"
]
mercedes_cclass_photos.each do |url|
  mercedes_cclass.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

progressbar.increment



ford_focus = Car.create!(
  category: "Hatchback",
  make: "Ford",
  model: "Focus Titanium Flex",
  year: 2016,
  price: 4900.00,
  engine_type: "Inline-3 Turbocharged",
  fuel_type: "Petrol",
  engine_size: 1000,
  seats: 5,
  doors: 5,
  transmission: "Manual",
  drivetrain: "Front-wheel drive",
  registration_year: "2014/8",
  dimension: "4.36×1.82×1.47 m",
  chassis_no: "145,502",
  engine_code: "M1DA",
  steering: "Left",
  ext_color: "White",
  location: "Germany",
  weight: 1300,
  version_class: "Titanium",
  max_capacity: "400 kg",
  description: "The Ford Focus Titanium EcoBoost is an economical and agile hatchback, equipped with advanced driver assistance systems.",
  condition: "Used",
  availability: true
)

ford_focus_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735809850/469956352_122141782016375358_9026623225387367048_n_e1zfds.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735809849/470190627_122141782040375358_3392311668530608092_n_xku7vm.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735809843/469968905_122141782256375358_8757106058425950965_n_jgixm0.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735809843/470187878_122141782310375358_4313902843026542609_n_wx0gph.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735809848/469955607_122141782262375358_7344494098208323906_n_hoar5o.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735809847/470087070_122141782064375358_5602008121401458040_n_xgp1jz.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735809846/470136729_122141782094375358_2274665934092659563_n_hpaqaz.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735809846/470024851_122141782154375358_405597932714834194_n_t3uubj.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735809843/470060572_122141782202375358_4235590050996605493_n_o1tewb.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735809842/469957382_122141782424375358_786659282997899696_n_c1fqic.jpg"
]
ford_focus_photos.each do |url|
  ford_focus.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

progressbar.increment



skoda_octavia = Car.create!(
  category: "Sedan",
  make: "Skoda",
  model: "Octavia TDI Elegance",
  year: 2013,
  price: 8900.00,
  engine_type: "Inline-4 Turbocharged Diesel",
  fuel_type: "Diesel",
  engine_size: 1600,
  seats: 5,
  doors: 4,
  transmission: "Manual",
  drivetrain: "Front-wheel drive",
  registration_year: "2015/4",
  dimension: "4.67×1.81×1.46 m",
  chassis_no: "98,100",
  engine_code: "CRUA",
  steering: "Left",
  ext_color: "White",
  location: "Czech Republic",
  weight: 1350,
  version_class: "Elegance",
  max_capacity: "500 kg",
  description: "The Skoda Octavia Elegance is a spacious, practical, and fuel-efficient sedan perfect for families and professionals.",
  condition: "Used",
  availability: true
)

skoda_octavia_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735810496/470190516_122126713880534446_145316736249922910_n_kq0a9a.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735810495/470174375_122126712542534446_7567974928179725565_n_b1bbl6.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735810494/470200078_122126712548534446_3750728031284612231_n_xad2zi.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735810493/470210085_122126712536534446_7011824498790611505_n_ry92js.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735810492/470218801_122126712554534446_2898950978625770452_n_ad1xwz.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735810491/470218778_122126712494534446_3281410222266348874_n_rfm2lv.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735810490/470594630_122126712530534446_6000156407787343229_n_ov68l7.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735810490/470190074_122126712560534446_8497734874812168052_n_ee12sh.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735810489/470620277_122126712518534446_7976687833982227928_n_oipqr3.jpg"
]
skoda_octavia_photos.each do |url|
  skoda_octavia.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

progressbar.increment


peugeot_208 = Car.create!(
  category: "Hatchback",
  make: "Peugeot",
  model: "208 Allure",
  year: 2019,
  price: 8900.00,
  engine_type: "Inline-4",
  fuel_type: "Petrol",
  engine_size: 1200,
  seats: 5,
  doors: 5,
  transmission: "Automatic",
  drivetrain: "Front-wheel drive",
  registration_year: "2012/10",
  dimension: "3.97×1.74×1.46 m",
  chassis_no: "78,001",
  engine_code: "EB2",
  steering: "right",
  ext_color: "Dark Grey",
  location: "France",
  weight: 1100,
  version_class: "Allure",
  max_capacity: "350 kg",
  description: "The Peugeot 208 Allure is a stylish and compact city car with responsive handling and impressive fuel efficiency.",
  condition: "Used",
  availability: true
)

peugeot_208_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735811178/r_dbrpug.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735811177/t_qvllkz.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735811179/s_rdqddv.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735811177/y_i4nqrv.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735811173/a_ervpth.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735811172/f_tqxx39.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735811173/d_a7v7qg.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735811172/g_fvjkgz.jpg"
]
peugeot_208_photos.each do |url|
  peugeot_208.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

progressbar.increment


nissan_qashqai = Car.create!(
  category: "SUV",
  make: "Nissan",
  model: "Qashqai Tekna",
  year: 2018,
  price: 8900.00,
  engine_type: "Inline-4",
  fuel_type: "Petrol",
  engine_size: 1600,
  seats: 5,
  doors: 5,
  transmission: "Manual",
  drivetrain: "Front-wheel drive",
  registration_year: "2013/6",
  dimension: "4.37×1.80×1.59 m",
  chassis_no: "67,248",
  engine_code: "R9M",
  steering: "Left",
  ext_color: "White",
  location: "Spain",
  weight: 1420,
  version_class: "Tekna",
  max_capacity: "470 kg",
  description: "The Nissan Qashqai Tekna is a versatile SUV offering a smooth ride, practical features, and great fuel economy.",
  condition: "Used",
  availability: true
)

nissan_qashqai_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735811863/471829655_1108093371106350_226398785594036741_n_sh8ctu.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735811862/471950538_1108093261106361_814233963863639624_n_ggdypp.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735811864/471670556_1108093394439681_8232319316717188358_n_pt1gqm.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735811790/471857347_1108093517773002_2327471939404763654_n_v8dqcy.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735811789/471766874_1108093564439664_8980773830571104873_n_ahmlir.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735811788/471713483_1108093684439652_7810145602544961113_n_b4koom.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735811782/471857684_1108093721106315_7389261375008324679_n_aib2cy.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735811782/471778516_1108094171106270_3995541643029211204_n_cdabey.jpg"
]
nissan_qashqai_photos.each do |url|
  nissan_qashqai.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

progressbar.increment


silverado_320d = Car.create!(
  category: "Truck",
  category: "Sedan",
  make: "Chevrolet",
  model: "Silverado 1500",
  year: 2021,
  price: 21900.00,
  engine_type: "Inline-4 Turbocharged Diesel",
  fuel_type: "Diesel",
  engine_size: 2000,
  seats: 5,
  doors: 4,
  transmission: "Automatic",
  drivetrain: "All-wheel drive",
  registration_year: "2015/3",
  dimension: "4.62×1.81×1.43 m",
  chassis_no: "78,900",
  engine_code: "N47D20",
  steering: "Left",
  ext_color: "Shadow Gray Metallic",
  location: "Germany",
  weight: 1550,
  version_class: "Luxury Line",
  max_capacity: "450 kg",
  description: "The BMW 320d xDrive combines sporty handling with luxurious comfort, perfect for long-distance commutes and city driving.",
  condition: "Used",
  availability: true
)

silverado_320d_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736117348/img-4-960x_vlcijm.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736117348/img-3-960x_c0f5xk.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736117347/img-6-960x_vehuht.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736117347/img-5-960x_rxwflq.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736117347/img-10-960x_zhatmk.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736117347/img-8-960x_juhpkz.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736117347/img-9-960x_dpsueh.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736117346/img-12-960x_f7nmn6.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736117346/img-18-960x_j9ebfy.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736117346/img-14-960x_igllna.avif"
]
silverado_320d_photos.each do |url|
  silverado_320d.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

progressbar.increment


vw_golf = Car.create!(
  category: "Hatchback",
  make: "Volkswagen",
  model: "Golf GTI",
  year: 2021,
  price: 5900.00,
  engine_type: "Inline-4 Turbocharged Diesel",
  fuel_type: "Diesel",
  engine_size: 2000,
  seats: 5,
  doors: 5,
  transmission: "Automatic",
  drivetrain: "Front-wheel drive",
  registration_year: "2013/9",
  dimension: "4.26×1.80×1.44 m",
  chassis_no: "43, a000",
  engine_code: "CRBC",
  steering: "Left",
  ext_color: "Night Black",
  location: "Netherlands",
  weight: 1400,
  version_class: "GTD",
  max_capacity: "400 kg",
  description: "The Volkswagen Golf GTD delivers a sporty driving experience, efficient fuel economy, and a premium interior.",
  condition: "Used",
  availability: true
)

vw_golf_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735812129/470182127_567394679483361_7269185737134588726_n_lcnvxk.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735812126/470201593_567394979483331_3238541816343883861_n_jp9jrb.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735812128/470173407_567394802816682_3763469776430345009_n_f2yvpo.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735812125/470240110_567395002816662_8438060967586613851_n_cwyq47.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735812124/470174663_567395096149986_1487407652255394316_n_erxtof.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735812124/470184593_567395046149991_3081836868897630015_n_fltw9x.jpg"
]
vw_golf_photos.each do |url|
  vw_golf.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

progressbar.increment



audi_a4 = Car.create!(
  category: "Sedan",
  make: "Audi",
  model: "A4",
  year: 2021,
  price: 20900.00,
  engine_type: "Inline-4 Turbocharged Diesel",
  fuel_type: "Petrol",
  engine_size: 2000,
  seats: 5,
  doors: 5,
  transmission: "Manual",
  drivetrain: "Front-wheel drive",
  registration_year: "2014/7",
  dimension: "4.70×1.83×1.43 m",
  chassis_no: "34,610",
  engine_code: "CNHA",
  steering: "Left",
  ext_color: "Navarra Blue Metallic",
  location: "Italy",
  weight: 1615,
  version_class: "TDI Ultra",
  max_capacity: "490 kg",
  description: "The Audi A4 Avant offers unmatched comfort, exceptional fuel efficiency, and a sophisticated design for daily use.",
  condition: "Used",
  availability: true
)

audi_a4_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736118230/img-3-960x_1_u8qun5.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736118229/img-2-960x_1_zd9to9.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736118229/img-5-960x_n6gcx9.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736118225/img-6-960x_tfus5h.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736118225/img-7-960x_1_eg0nxj.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736118224/img-9-960x_1_npn2qz.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736118224/img-10-960x_1_l2fef4.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736118224/img-8-960x_1_od3vv0.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736118224/img-16-960x_vsscdh.jpg"
]
audi_a4_photos.each do |url|
  audi_a4.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

progressbar.increment


renault_clio = Car.create!(
  category: "Hatchback",
  make: "Renault",
  model: "Clio Dynamique dCi 90",
  year: 201,
  price: 2900.00,
  engine_type: "Inline-4 Diesel",
  fuel_type: "Diesel",
  engine_size: 1500,
  seats: 5,
  doors: 5,
  transmission: "Manual",
  drivetrain: "Front-wheel drive",
  registration_year: "2012/6",
  dimension: "4.06×1.73×1.45 m",
  chassis_no: "97,000",
  engine_code: "K9K",
  steering: "Left",
  ext_color: "White",
  location: "Sweden",
  weight: 1205,
  version_class: "Dynamique",
  max_capacity: "360 kg",
  description: "The Renault Clio Dynamique is a nimble and economical hatchback, ideal for city commuters and small families.",
  condition: "Used",
  availability: true
)

renault_clio_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736120365/471166127_1242146127057783_1465604309611252565_n_u3lbvs.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736120371/471112221_1242146093724453_2414084821491254250_n_kk2lsp.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736120370/471147096_1242146117057784_8739222530585549230_n_a9bbsm.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736120369/471143343_1242146110391118_5801468617667759403_n_muj4bs.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736120366/471050098_1242146120391117_3308247815973238708_n_yfxbe4.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736120365/471148109_1242146133724449_6341999719384293840_n_lo05tc.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736120365/471263707_1242146103724452_532504477915358920_n_r68r0u.jpg"
]
renault_clio_photos.each do |url|
  renault_clio.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

progressbar.increment


volvo_xc60 = Car.create!(
  category: "SUV",
  make: "Volvo",
  model: "XC60 D5 AWD",
  year: 2013,
  price: 6900.00,
  engine_type: "Inline-5 Turbocharged Diesel",
  fuel_type: "Diesel",
  engine_size: 2400,
  seats: 5,
  doors: 5,
  transmission: "Automatic",
  drivetrain: "All-wheel drive",
  registration_year: "2011/11",
  dimension: "4.63×1.89×1.71 m",
  chassis_no: "97,000 ",
  engine_code: "D5244T10",
  steering: "Left",
  ext_color: "Silver",
  location: "Sweden",
  weight: 1860,
  version_class: "D5 AWD",
  max_capacity: "470 kg",
  description: "The Volvo XC60 D5 AWD is a safe and reliable SUV with excellent all-weather capability and a spacious interior.",
  condition: "Used",
  availability: true
)

volvo_xc60_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736119890/IMG_9195_fptiom.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736119889/IMG_9194_k1z346.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736119892/IMG_9196_iso7gj.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736119893/IMG_9197_cvfshn.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736119889/IMG_9198_dftfku.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736119888/IMG_9199_b3nyij.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736119862/IMG_9200_iutm6b.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736119862/IMG_9201_elspqe.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736119862/IMG_9202_yk14uv.jpg"
]
volvo_xc60_photos.each do |url|
  volvo_xc60.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

progressbar.increment


mercedes_c220 = Car.create!(
  category: "Hatchback",
  make: "Mercedes-Benz",
  model: "C-Class C220 CDI",
  year: 2012,
  price: 2900.00,
  engine_type: "Inline-4 Turbocharged Diesel",
  fuel_type: "Diesel",
  engine_size: 2143,
  seats: 5,
  doors: 4,
  transmission: "Automatic",
  drivetrain: "Rear-wheel drive",
  registration_year: "2010/4",
  dimension: "4.59×1.77×1.44 m",
  chassis_no: "131,403",
  engine_code: "OM651",
  steering: "Right",
  ext_color: "Silver",
  location: "UK",
  weight: 1545,
  version_class: "C220 CDI",
  max_capacity: "450 kg",
  description: "The Mercedes-Benz C220 CDI is a premium sedan offering a balance of performance, comfort, and luxury.",
  condition: "Used",
  availability: true
)

mercedes_c220_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736120637/472148744_3805889709677205_3384986736646035041_n_bckvlz.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736120635/472570233_3805890079677168_257109040465583855_n_blgaio.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736120635/472273342_3805890156343827_7221313226775606353_n_unmidf.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736120636/472426377_3805889999677176_207664239825410772_n_qgoglz.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736120628/472374958_3805889929677183_6895620500662265161_n_dj2w4a.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736120627/472523897_3805890226343820_7740835849641088849_n_fmuizv.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736120625/472247732_3805890059677170_3972264730496214630_n_dflgdu.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736120623/472354680_3805890339677142_1544193224531986990_n_zllnai.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736120616/472185527_3805889953010514_939546612445672349_n_uwzk6a.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736120615/472249231_3805890289677147_8519824907121221337_n_i2trmg.jpg"
]
mercedes_c220_photos.each do |url|
  mercedes_c220.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

progressbar.increment


peugeot_308 = Car.create!(
  category: "Hatchback",
  make: "Peugeot",
  model: "308 ALLURE",
  year: 2017,
  price: 4900.00,
  engine_type: "Inline-4 Diesel",
  fuel_type: "Diesel",
  engine_size: 1600,
  seats: 5,
  doors: 5,
  transmission: "Manual",
  drivetrain: "Front-wheel drive",
  registration_year: "2016/8",
  dimension: "4.25×1.80×1.46 m",
  chassis_no: "66,000",
  engine_code: "DV6FC",
  steering: "Right",
  ext_color: "Silver",
  location: "Ireland",
  weight: 1300,
  version_class: "Allure",
  max_capacity: "400 kg",
  description: "The Peugeot 308 BlueHDi offers exceptional fuel efficiency, a refined interior, and modern technology features.",
  condition: "Used",
  availability: true
)

peugeot_308_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736121134/471165705_122131025594509370_3750243301721233060_n_leqkuo.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736121128/471190266_122131025600509370_509293275460174205_n_vs8g3h.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736121127/471569260_122131025552509370_6862209638623642753_n_v0jmoh.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736121122/471581499_122131025570509370_5511798865859242035_n_te8ghm.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736121121/471424205_122131025564509370_6231535390159207435_n_jy4ps9.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736121120/471686540_122131025576509370_7100779668186682020_n_cuipfu.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736121113/471755166_122131025588509370_4233683085237596562_n_gusngk.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736121112/471399325_122131025582509370_7786354502169998768_n_ce5re5.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736121109/470566920_122131025558509370_3000253011751845834_n_wgtxpj.jpg"
]
peugeot_308_photos.each do |url|
  peugeot_308.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

progressbar.increment



ford_fiesta = Car.create!(
  category: "Hatchback",
  make: "Ford",
  model: "Fiesta Zetec",
  year: 2011,
  price: 2100.00,
  engine_type: "Inline-4 Petrol",
  fuel_type: "Petrol",
  engine_size: 1200,
  seats: 5,
  doors: 5,
  transmission: "Manual",
  drivetrain: "Front-wheel drive",
  registration_year: "2011/5",
  dimension: "3.95×1.72×1.48 m",
  chassis_no: "55,998",
  engine_code: "RTJA",
  steering: "Right",
  ext_color: "Metallic Black",
  location: "United Kingdom",
  weight: 1050,
  version_class: "Zetec",
  max_capacity: "300 kg",
  description: "The Ford Fiesta Zetec is a reliable and fun-to-drive hatchback, great for city driving and first-time car owners.",
  condition: "Used",
  availability: true
)

ford_fiesta_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736121483/472562035_10162166728167270_6865044869757426678_n_bkd12j.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736121480/472373867_10162166728172270_6856165688480120552_n_r5rh2g.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736121479/472558785_10162166728147270_5407512124162561959_n_b2dffm.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736121478/472295779_10162166727947270_6717557440550091857_n_pajfwx.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736121477/472225839_10162166727957270_2703894127444998065_n_eyu9zp.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736121465/472379241_10162166727817270_5057963888941927168_n_kwssrz.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736121463/472558951_10162166727812270_625289912262579410_n_pfehqe.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736121465/472152725_10162166727807270_3695208178846452471_n_ahezlp.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736121474/472284873_10162166727942270_141055890764163203_n_jed7qc.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736121475/472529584_10162166727952270_3474625257855032154_n_qcbt6b.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736121481/472913144_10162166727782270_5967705767318586662_n_uk5zdc.jpg"
]
ford_fiesta_photos.each do |url|
  ford_fiesta.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

progressbar.increment


opel_astra = Car.create!(
  category: "Wagon",
  make: "Opel",
  model: "Astra Sports Tourer",
  year: 2017,
  price: 12900.00,
  engine_type: "Inline-4 Petrol",
  fuel_type: "Petrol",
  engine_size: 1400,
  seats: 5,
  doors: 5,
  transmission: "Manual",
  drivetrain: "Front-wheel drive",
  registration_year: "2014/3",
  dimension: "4.70×1.81×1.53 m",
  chassis_no: "64,000",
  engine_code: "A14NET",
  steering: "Left",
  ext_color: "Silver",
  location: "Belgium",
  weight: 1425,
  version_class: "Sports Tourer",
  max_capacity: "500 kg",
  description: "The Opel Astra Sports Tourer offers practicality, style, and reliable performance for everyday and family needs.",
  condition: "Used",
  availability: true
)

opel_astra_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736121716/472144774_122204392766159568_3086616090471898532_n_dlbvzm.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736121726/472111652_122204392676159568_8918897088315740306_n_cdddt9.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736121714/471791947_122204392850159568_8412901764987553381_n_d8ju1h.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736121725/471423925_122204392808159568_2199399032510014854_n_wmosf7.jpg"
]
opel_astra_photos.each do |url|
  opel_astra.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

progressbar.increment


vw_passat = Car.create!(
  category: "Wagon",
  make: "Volkswagen",
  model: "Passat Estate TDI DSG",
  year: 2012,
  price: 5900.00,
  engine_type: "Inline-4 Turbocharged Diesel",
  fuel_type: "Diesel",
  engine_size: 2000,
  seats: 5,
  doors: 5,
  transmission: "Automatic",
  drivetrain: "Front-wheel drive",
  registration_year: "2017/6",
  dimension: "4.77×1.83×1.47 m",
  chassis_no: "68,000",
  engine_code: "CFGB",
  steering: "Left",
  ext_color: "Grey",
  location: "Germany",
  weight: 1505,
  version_class: "Estate",
  max_capacity: "650 kg",
  description: "The Volkswagen Passat Estate is a versatile, fuel-efficient family car, equipped with advanced safety features and a spacious interior.",
  condition: "Used",
  availability: true
)

vw_passat_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736121985/472712027_8967540206673103_640760158359275088_n_aeqqov.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736121983/472714100_8967540170006440_7671222465955166145_n_v4vsde.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736121980/472236201_8967540173339773_754609563598882349_n_zhhcph.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736121979/472391962_8967540196673104_4107924635354095564_n_e3dvvt.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736121964/472409299_8967540180006439_5806367496570112449_n_flmnmz.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736121963/472234557_8967540163339774_1384341445313075006_n_smtfcv.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736121963/472712027_8967540206673103_640760158359275088_n_1_rqdnsm.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736121954/472235387_8967540186673105_3344039424645598937_n_rzoyhb.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736121941/472392911_8967540203339770_6153600595129825776_n_zmsm40.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736121941/472396475_8967540183339772_8655375767433741969_n_bqsmpp.jpg"
]
vw_passat_photos.each do |url|
  vw_passat.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

progressbar.increment


renault_clio = Car.create!(
  category: "Hatchback",
  make: "Renault",
  model: "Clio IV 0.9 TCe",
  year: 2019,
  price: 4400.00,
  engine_type: "Inline-3 Petrol",
  fuel_type: "Petrol",
  engine_size: 898,
  seats: 5,
  doors: 5,
  transmission: "Manual",
  drivetrain: "Front-wheel drive",
  registration_year: "2018/4",
  dimension: "4.05×1.73×1.45 m",
  chassis_no: "36000 ",
  engine_code: "H4Bt",
  steering: "Left",
  ext_color: "Blue",
  location: "France",
  weight: 1090,
  version_class: "IV",
  max_capacity: "300 kg",
  description: "The Renault Clio IV delivers a compact design with an efficient turbocharged engine, perfect for city driving.",
  condition: "Used",
  availability: true
)

renault_clio_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736122223/472340517_9460792097272514_7223272130640035692_n_xektvo.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736122207/472375455_9460792363939154_4976485562284061141_n_mhggtx.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736122206/472401618_9460790637272660_8756840344225069937_n_valuni.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736122194/472226869_9460790903939300_2743221476559578040_n_mudyz2.jpg"
]
renault_clio_photos.each do |url|
  renault_clio.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

progressbar.increment


bmw_320d = Car.create!(
  category: "Wagon",
  make: "BMW",
  model: "3 Series 320d xDrive Touring",
  year: 2017,
  price: 9900.00,
  engine_type: "Inline-4 Turbocharged Diesel",
  fuel_type: "Diesel",
  engine_size: 1995,
  seats: 5,
  doors: 5,
  transmission: "Automatic",
  drivetrain: "All-wheel drive",
  registration_year: "2019/9",
  dimension: "4.70×1.82×1.44 m",
  chassis_no: "88,000",
  engine_code: "B47D20",
  steering: "Left",
  ext_color: "Night Grey",
  location: "Switzerland",
  weight: 1575,
  version_class: "xDrive Touring",
  max_capacity: "560 kg",
  description: "The BMW 320d xDrive Touring combines luxury, performance, and practicality in a versatile wagon.",
  condition: "Used",
  availability: true
)

bmw_320d_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736122430/470693887_618239690878448_694772650976716188_n_lm37ok.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736122424/471131392_618239644211786_3871983612315081586_n_bk2srm.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736122423/471208853_618239830878434_3614989131665098760_n_boquxd.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736122422/471154913_618239800878437_4703838693572012687_n_xdc8sh.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736122419/471429785_618239810878436_7005655515602383769_n_ja8h5m.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736122418/471231444_618239670878450_4513827436852108928_n_kzmac8.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736122403/471318303_618239777545106_7786331052336465904_n_dujfu4.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736122403/471158847_618239794211771_714735638499656110_n_qk5zja.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736122401/471251304_618239797545104_5204391273753774391_n_b5yhbz.jpg"
]
bmw_320d_photos.each do |url|
  bmw_320d.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

progressbar.increment


audi_a4 = Car.create!(
  category: "Wagon",
  make: "Audi",
  model: "A4 Avant 2.0 TDI",
  year: 2013,
  price: 1900.00,
  engine_type: "Inline-4 Turbocharged Diesel",
  fuel_type: "Diesel",
  engine_size: 1968,
  seats: 5,
  doors: 5,
  transmission: "Automatic",
  drivetrain: "Front-wheel drive",
  registration_year: "2013/3",
  dimension: "4.72×1.84×1.43 m",
  chassis_no: "100,010",
  engine_code: "CGLC",
  steering: "Right",
  ext_color: "Brilliant black metallic ",
  location: "UK",
  weight: 1540,
  version_class: "Avant",
  max_capacity: "525 kg",
  description: "The Audi A4 Avant is a sleek and sophisticated wagon with excellent fuel economy and advanced technology.",
  condition: "Used",
  availability: true
)

audi_a4_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736124634/471841917_9404487039564022_7903686326807493310_n_yha5qv.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736124633/472032923_9404490502897009_1892590227657432227_n_wijqqx.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736124614/472091123_9404490312897028_1829388816097538315_n_fwulxd.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736124613/471859451_9404490172897042_6523921219035431587_n_q0icmm.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736124601/471520020_9404490709563655_9028879821834924699_n_if2gyq.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736124600/471982967_9404487366230656_5862601248488984489_n_rurkqi.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736124590/471875129_9404490076230385_262619815331910760_n_w81ujq.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736124589/472138795_9404491079563618_3460907997282988538_n_xkswgr.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736124588/472114404_9404490989563627_8470137987207430537_n_rifgto.jpg"
]
audi_a4_photos.each do |url|
  audi_a4.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

progressbar.increment


volvo_v40 = Car.create!(
  category: "Hatchback",
  make: "Volvo",
  model: "V40 D2 R-Design",
  year: 2012,
  price: 2500.00,
  engine_type: "Inline-4 Diesel",
  fuel_type: "Diesel",
  engine_size: 1600,
  seats: 5,
  doors: 5,
  transmission: "Manual",
  drivetrain: "Front-wheel drive",
  registration_year: "2014/8",
  dimension: "4.37×1.80×1.45 m",
  chassis_no: "70,000",
  engine_code: "D4162T",
  steering: "Right",
  ext_color: "Blue",
  location: "Sweden",
  weight: 1325,
  version_class: "R-Design",
  max_capacity: "500 kg",
  description: "The Volvo V40 R-Design is a stylish and safe hatchback with premium features and impressive handling.",
  condition: "Used",
  availability: true
)

volvo_v40_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736124898/472269209_9055847604480798_5826063616674648401_n_u03h4v.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736124896/472642285_9055848014480757_8927507738118960177_n_z5m5kl.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736124895/472274588_9055848021147423_8145501994709217967_n_hfdmhd.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736124892/472278635_9055847874480771_3416838676156807631_n_zb6ebg.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736124891/472775327_9055846954480863_2291722575585827753_n_o9sxlo.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736124889/472468890_9055847434480815_3885342440840866869_n_jmobcj.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736124888/472414986_9055846981147527_8716743649977547149_n_c2krcr.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736124885/472892982_9055847134480845_6172381677739202198_n_z4b72e.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736124884/472389710_9055805571151668_9052321123180581381_n_jydqth.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736124882/472762049_9055846477814244_2670796960365541781_n_ix9rm9.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736124881/472389316_9055842797814612_3648725208299331196_n_lqidzx.jpg"
]
volvo_v40_photos.each do |url|
  volvo_v40.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

progressbar.increment



ford_focus = Car.create!(
  category: "Hatchback",
  make: "Ford",
  model: "Focus 1.5 TDCi Titanium",
  year: 2015,
  price: 12900.00,
  engine_type: "Inline-4 Diesel",
  fuel_type: "Diesel",
  engine_size: 1499,
  seats: 5,
  doors: 5,
  transmission: "Manual",
  drivetrain: "Front-wheel drive",
  registration_year: "2015/3",
  dimension: "4.36×1.82×1.48 m",
  chassis_no: "61,000",
  engine_code: "DV5FD",
  steering: "Left",
  ext_color: "White",
  location: "Belgium",
  weight: 1380,
  version_class: "Titanium",
  max_capacity: "450 kg",
  description: "The Ford Focus Titanium combines practicality, advanced features, and excellent fuel efficiency, perfect for urban and suburban use.",
  condition: "Used",
  availability: true
)

ford_focus_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736125490/471152507_3931895577079403_7533204133391749285_n_skaj7o.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736125487/471377445_3931895573746070_262163769805115511_n_ndfssm.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736125486/471128513_3931895570412737_2097151242354053645_n_ymetsa.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736125379/471264528_3931895593746068_9081470545580282425_n_tsdvtt.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736125378/471431819_3931895580412736_4443040277731236737_n_puauer.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736125357/471324321_3931895463746081_4199167639126714728_n_midbia.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736125354/471187248_3931895563746071_6424068128088559201_n_o6he2u.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736125354/471148794_3931895567079404_3815242908105080013_n_bpwy68.jpg"
]
ford_focus_photos.each do |url|
  ford_focus.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

progressbar.increment


peugeot_3008 = Car.create!(
  category: "SUV",
  make: "Peugeot",
  model: "3008 Allure 1.6 BlueHDi",
  year: 2017,
  price: 19500.00,
  engine_type: "Inline-4 Diesel",
  fuel_type: "Diesel",
  engine_size: 1560,
  seats: 5,
  doors: 5,
  transmission: "Manual",
  drivetrain: "Front-wheel drive",
  registration_year: "2017/7",
  dimension: "4.45×1.84×1.62 m",
  chassis_no: "39,000",
  engine_code: "DV6FC",
  steering: "Left",
  ext_color: "Grey",
  location: "Spain",
  weight: 1420,
  version_class: "Allure",
  max_capacity: "500 kg",
  description: "The Peugeot 3008 Allure is a stylish and practical crossover, known for its spacious interior and advanced driver-assistance features.",
  condition: "Used",
  availability: true
)

peugeot_3008_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736126067/339283610_138351909200777_5916771076555803217_n_ptvdjd.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736126043/339314713_1195132384539649_4113698137490228754_n_lq3vgl.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736126052/340427970_2078659848989858_8974877969157330481_n_j5e1ur.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736126065/340295154_178633174609465_677651522161967943_n_etjat1.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736126044/339322975_1176148779715233_2452047041126151999_n_rigdvt.jpg"
]
peugeot_3008_photos.each do |url|
  peugeot_3008.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

progressbar.increment


skoda_octavia = Car.create!(
  category: "Sedan",
  make: "Skoda",
  model: "Octavia 1.6 TDI Elegance",
  year: 2014,
  price: 11200.00,
  engine_type: "Inline-4 Diesel",
  fuel_type: "Diesel",
  engine_size: 1598,
  seats: 5,
  doors: 4,
  transmission: "Automatic",
  drivetrain: "Front-wheel drive",
  registration_year: "2014/2",
  dimension: "4.66×1.81×1.46 m",
  chassis_no: "87,904",
  engine_code: "CAYC",
  steering: "Right",
  ext_color: "Silver",
  location: "Ireland",
  weight: 1330,
  version_class: "Elegance",
  max_capacity: "500 kg",
  description: "The Skoda Octavia Elegance is a depend

  progressbar.increment

  able and fuel-efficient sedan with an emphasis on comfort and practicality.",
  condition: "Used",
  availability: true
)

skoda_octavia_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736126307/471383661_9488188747880050_8727574312041908703_n_bhiqq2.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736126306/471250345_9488188754546716_1777439019140506364_n_kmjhpb.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736126304/471258768_9488188764546715_7800126276907845106_n_gtbcp2.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736126301/471268524_9488188771213381_7166921138903742388_n_yzvwku.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736126300/470235447_9488188757880049_4698939998071723165_n_xo35ap.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736126297/471327351_9488188761213382_4492444025939973794_n_t8z8xv.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736126295/471673745_9488201767878748_5169669435216908975_n_udsseg.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736126293/471948226_9488201811212077_4398147074524303518_n_nlqgar.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736126292/471171652_9488201734545418_545647258822135437_n_vcbswo.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736126288/471227909_9488201777878747_4743050703325649289_n_trvyi0.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736126287/471232408_9488201817878743_9163694409465085998_n_q4l1vc.jpg"
]
skoda_octavia_photos.each do |url|
  skoda_octavia.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

progressbar.increment


opel_astra = Car.create!(
  category: "Wagon",
  make: "Opel",
  model: "Astra Sports Tourer 1.4 Turbo",
  year: 2019,
  price: 6500.00,
  engine_type: "Inline-4 Petrol",
  fuel_type: "Petrol",
  engine_size: 1399,
  seats: 5,
  doors: 5,
  transmission: "Automatic",
  drivetrain: "Front-wheel drive",
  registration_year: "2018/8",
  dimension: "4.70×1.81×1.50 m",
  chassis_no: "115,589",
  engine_code: "B14XFL",
  steering: "Left",
  ext_color: "White",
  location: "Netherlands",
  weight: 1385,
  version_class: "Sports Tourer",
  max_capacity: "475 kg",
  description: "The Opel Astra Sports Tourer is a versatile and stylish wagon, offering a smooth ride and spacious cargo area.",
  condition: "Used",
  availability: true
)

opel_astra_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736126602/471510394_1176411321160484_7810620104251097048_n_vyz0lv.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736126590/472580191_1176411267827156_647481373803765692_n_ikig5e.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736126588/471734290_1176411364493813_5276953529608404927_n_rux5yp.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736126588/472181725_1176411551160461_2840080153259833895_n_x7jkjz.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736126589/471782984_1176411427827140_1623053499995822036_n_lf2wyw.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736126586/472567536_1176411651160451_9211330617700838103_n_lxswxc.jpg"
]
opel_astra_photos.each do |url|
  opel_astra.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

progressbar.increment


bmw_x3 = Car.create!(
  category: "SUV",
  make: "BMW",
  model: "X3 xDrive20d M Sport",
  year: 2022,
  price: 18900.00,
  engine_type: "Inline-4 Diesel",
  fuel_type: "Diesel",
  engine_size: 1995,
  seats: 5,
  doors: 5,
  transmission: "Automatic",
  drivetrain: "All-wheel drive",
  registration_year: "2019/4",
  dimension: "4.71×1.89×1.67 m",
  chassis_no: "54,781",
  engine_code: "B47D20",
  steering: "Left",
  ext_color: "White",
  location: "Germany",
  weight: 1800,
  version_class: "M Sport",
  max_capacity: "600 kg",
  description: "The BMW X3 M Sport delivers a perfect blend

  progressbar.increment

  of sporty performance and luxury, equipped with advanced technology for a premium driving experience.",
  condition: "Used",
  availability: true
)

bmw_x3_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736126977/471187367_603039182243789_1026027131337903162_n_cqe6qy.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736126985/471325035_603039142243793_8860546513062513465_n_agwapg.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736126987/470834816_603039092243798_6706339008331382748_n_ixuylc.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736126966/470673943_603039215577119_7709708145461302796_n_wcyctr.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736126965/470694270_603039252243782_8325329705801677105_n_dvd0xj.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736126961/470669144_603039285577112_7047438458079294462_n_l6s7hi.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736126958/471147347_603039328910441_1569540827362656107_n_bhjgrt.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736126952/471113980_603039418910432_6948028302166680752_n_wghvhh.jpg"
]
bmw_x3_photos.each do |url|
  bmw_x3.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

progressbar.increment


audi_a4 = Car.create!(
  category: "Sedan",
  make: "Audi",
  model: "A4 2.0 TDI Ultra Sport",
  year: 2016,
  price: 7500.00,
  engine_type: "Inline-4 Diesel",
  fuel_type: "Diesel",
  engine_size: 1968,
  seats: 5,
  doors: 4,
  transmission: "Manual",
  drivetrain: "Front-wheel drive",
  registration_year: "2015/6",
  dimension: "4.73×1.84×1.43 m",
  chassis_no: "82,000 ",
  engine_code: "CGLC",
  steering: "Right",
  ext_color: "White",
  location: "France",
  weight: 1480,
  version_class: "Ultra Sport",
  max_capacity: "525 kg",
  description: "The Audi A4 Ultra Sport is a sophisticated sedan offering impressive fuel efficiency, dynamic performance, and premium comfort.",
  condition: "Used",
  availability: true
)

audi_a4_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736127235/466974003_1039802258156374_8858195762764826461_n_m8wgah.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736127232/466380201_1039802454823021_2635204591024187657_n_cqbuxo.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736127229/466419205_1039802274823039_1819004800274175712_n_ib4n1x.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736127226/465897019_1039802674822999_2837206729776634230_n_jstdts.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736127214/466136124_1039802594823007_628935981751877720_n_andbyt.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736127212/466466636_1039802411489692_2083774741111245552_n_xiwcxd.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736127202/466463651_1039802324823034_1754180882443724449_n_bi88g1.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736127195/466042324_1039802544823012_1688254878099093225_n_t6co2p.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736127194/466339645_1039802484823018_2516990091359225928_n_uangx3.jpg"
]
audi_a4_photos.each do |url|
  audi_a4.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

progressbar.increment


volvo_xc60 = Car.create!(
  category: "SUV",
  make: "Volvo",
  model: "XC60 D4 Momentum",
  year: 2015,
  price: 32900.00,
  engine_type: "Inline-4 Diesel",
  fuel_type: "Diesel",
  engine_size: 1969,
  seats: 5,
  doors: 5,
  transmission: "Automatic",
  drivetrain: "All-wheel drive",
  registration_year: "2018/9",
  dimension: "4.69×1.90×1.65 m",
  chassis_no: "106.000",
  engine_code: "D4204T14",
  steering: "Left",
  ext_color: "White",
  location: "Sweden",
  weight: 1905,
  version_class: "Momentum",
  max_capacity: "640 kg",
  description: "The Volvo XC60 Momentum is a safe, stylish, and versatile SUV equipped with advanced safety features and Scandinavian design.",
  condition: "Used",
  availability: true
)

volvo_xc60_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736127470/468398658_1108127101322088_8810792225076188361_n_tunsy2.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736127462/468410173_1108127131322085_6922988271033309629_n_llnrr6.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736127459/b_dnonog.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736127454/468249414_1108127184655413_2998653228094386258_n_ritg1i.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736127441/468216428_1108127251322073_4196924057242399153_n_nvjskv.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736127438/468398158_1108127281322070_6047568599283569960_n_ppxefi.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736127430/468390778_1108127304655401_6133341964409437789_n_hjipwq.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736127423/468351865_1108127341322064_9199368433724500187_n_afhmkc.jpg"
]
volvo_xc60_photos.each do |url|
  volvo_xc60.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

progressbar.increment



toyota_corolla = Car.create!(
  category: "Wagon",
  make: "Toyota",
  model: "Corolla Touring Sports Hybrid Icon Tech",
  year: 2019,
  price: 7500.00,
  engine_type: "Hybrid Petrol",
  fuel_type: "Hybrid",
  engine_size: 1798,
  seats: 5,
  doors: 5,
  transmission: "Automatic",
  drivetrain: "Front-wheel drive",
  registration_year: "2020/3",
  dimension: "4.65×1.79×1.43 m",
  chassis_no: "47,447",
  engine_code: "2ZR-FXE",
  steering: "Left",
  ext_color: "Black",
  location: "Poland",
  weight: 1365,
  version_class: "Icon Tech",
  max_capacity: "500 kg",
  description: "The Toyota Corolla Touring Sports Hybrid offers outstanding efficiency, comfort, and cargo space for modern families.",
  condition: "Used",
  availability: true
)

toyota_corolla_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736128000/464395522_122218959158022342_6534741639678621526_n_eiwxtc.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736127998/464410495_122218959200022342_6761337283689903763_n_hqu9el.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736127996/464395901_122218959248022342_2645248028227947762_n_hcqfit.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736127994/464312491_122218959290022342_1362783623841663532_n_sruizs.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736127979/464419674_122218959386022342_1149155952514972035_n_rmdsho.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736127962/464386194_122218959434022342_7826352227240793267_n_muwz5u.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736127948/464436178_122218959482022342_8648276723982929896_n_kozgb5.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736127947/464437974_122218959524022342_7352774501232424199_n_qlioet.jpg"
]
toyota_corolla_photos.each do |url|
  toyota_corolla.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

progressbar.increment



vw_golf = Car.create!(
  category: "Hatchback",
  make: "Volkswagen",
  model: "Golf 1.4 TSI Bluemotion Tech SE",
  year: 2014,
  price: 14500.00,
  engine_type: "Inline-4 Petrol",
  fuel_type: "Petrol",
  engine_size: 1395,
  seats: 5,
  doors: 5,
  transmission: "Manual",
  drivetrain: "Front-wheel drive",
  registration_year: "2016/5",
  dimension: "4.25×1.79×1.45 m",
  chassis_no: "51,000",
  engine_code: "CZEA",
  steering: "Right",
  ext_color: "Red",
  location: "UK",
  weight: 1225,
  version_class: "Bluemotion Tech SE",
  max_capacity: "450 kg",
  description: "The Volkswagen Golf Bluemotion Tech SE is an eco-friend

  progressbar.increment

  ly hatchback offering excellent efficiency, practicality, and a fun driving experience.",
  condition: "Used",
  availability: true
)

vw_golf_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736128434/472057911_956857376359979_249844947963608039_n_xwe1ro.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736128437/472210897_956857389693311_7313396923762252709_n_hnf5xd.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736128432/472309512_956857379693312_2997040222748744595_n_gjkwzd.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736128430/472044754_956857339693316_4092019531932412764_n_z8a3bd.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736128428/471991061_956857386359978_3117127267679530450_n_dsegfd.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736128425/472313927_956857383026645_1944027239837281010_n_zkfohu.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736128423/472308358_956857236359993_6264058593998503009_n_jaqtr9.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736128421/472523381_956857359693314_7080129481043377109_n_idrktp.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736128419/472411710_956857319693318_3175669801453974107_n_zwvnyf.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736128417/472315158_956857276359989_763141310172024950_n_uxfm4g.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736128414/472187498_956857329693317_3853243863379844376_n_ctsmgg.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736128413/472403763_956857279693322_4568649864054171446_n_kcgy3c.jpg"
]
vw_golf_photos.each do |url|
  vw_golf.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

progressbar.increment


peugeot_3008 = Car.create!(
  category: "SUV",
  make: "Peugeot",
  model: "3008 1.5 BlueHDi Allure",
  year: 2019,
  price: 9500.00,
  engine_type: "Inline-4 Diesel",
  fuel_type: "Diesel",
  engine_size: 1499,
  seats: 5,
  doors: 5,
  transmission: "Manual",
  drivetrain: "Front-wheel drive",
  registration_year: "2020/3",
  dimension: "4.45×1.84×1.62 m",
  chassis_no: "𝟲𝟯,𝟭𝟳𝟬 ",
  engine_code: "DV5RC",
  steering: "Right",
  ext_color: "White",
  location: "UK",
  weight: 1405,
  version_class: "Allure",
  max_capacity: "520 kg",
  description: "The Peugeot 3008 Allure offers a bold design, modern tech, and exceptional comfort for families seeking a reliable SUV.",
  condition: "Used",
  availability: true
)

peugeot_3008_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736128703/461190613_1032518688665148_8460583481491630651_n_xedtbf.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736128699/461266480_1032518671998483_8430976666914231156_n_uwwf6y.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736128692/461515972_1032518668665150_2906679576052026748_n_ibod9l.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736128690/461433661_1032518675331816_3196056048695895593_n_t3xneo.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736128687/461273256_1032518681998482_2111893947220453465_n_qc3qyq.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736128682/461231350_1032518685331815_6566443613517085689_n_uq06z1.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736128677/461283323_1032518678665149_7129652900602097305_n_rzhzeq.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736128668/461321463_1032518661998484_4721237220733003908_n_elmmd5.jpg"
]
peugeot_3008_photos.each do |url|
  peugeot_3008.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

progressbar.increment


ford_focus = Car.create!(
  category: "Hatchback",
  make: "Ford",
  model: "Focus 1.0 EcoBoost Titanium",
  year: 2013,
  price: 1500.00,
  engine_type: "Inline-3 Petrol",
  fuel_type: "Petrol",
  engine_size: 999,
  seats: 5,
  doors: 5,
  transmission: "Manual",
  drivetrain: "Front-wheel drive",
  registration_year: "2017/6",
  dimension: "4.36×1.82×1.47 m",
  chassis_no: "90,000 ",
  engine_code: "M1JE",
  steering: "Right",
  ext_color: "Grey",
  location: "United Kingdom",
  weight: 1265,
  version_class: "Titanium",
  max_capacity: "500 kg",
  description: "The Ford Focus Titanium offers a perfect mix of fuel efficiency, advanced safety features, and a comfortable interior.",
  condition: "Used",
  availability: true
)

ford_focus_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736129001/471596394_1260836285216663_3027346101048470172_n_b0jevy.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736128999/471610030_1260836281883330_6778470957235670640_n_mqdayi.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736128997/471698889_1260836338549991_2499068243445685122_n_eiwaf9.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736128997/471698889_1260836338549991_2499068243445685122_n_eiwaf9.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736128992/471612425_1260836345216657_6377804978383269883_n_x2mhbo.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736128990/471427397_1260836381883320_230332661469625715_n_dbvrv3.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736128988/471531776_1260836418549983_1604030567954911951_n_a1gdep.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736128985/471819049_1260836438549981_8868429560867404847_n_mzbyso.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736128977/471991058_1260836468549978_3597742072837479187_n_xdg8ub.jpg"
]
ford_focus_photos.each do |url|
  ford_focus.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

progressbar.increment


skoda_octavia = Car.create!(
  category: "Wagon",
  make: "Skoda",
  model: "Octavia 1.6 TDI SE L DSG",
  year: 2019,
  price: 19900.00,
  engine_type: "Inline-4 Diesel",
  fuel_type: "Diesel",
  engine_size: 1598,
  seats: 5,
  doors: 5,
  transmission: "Automatic",
  drivetrain: "Front-wheel drive",
  registration_year: "2019/5",
  dimension: "4.67×1.81×1.46 m",
  chassis_no: "105.000",
  engine_code: "CLH",
  steering: "Left",
  ext_color: "Black",
  location: "Czech Republic",
  weight: 1335,
  version_class: "SE L DSG",
  max_capacity: "570 kg",
  description: "The Skoda Octavia SE L DSG combines practicality, spaciousness, and excellent driving dynamics, making it ideal for daily use.",
  condition: "Used",
  availability: true
)

skoda_octavia_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736129244/471246272_28784063874526013_7297336920647838345_n_jlzmrq.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736129241/472188311_28784063891192678_2324233589334068854_n_rav3hx.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736129238/472445323_28784063897859344_21650773380182921_n_nt2hag.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736129236/472529302_28784063871192680_7939015782403197441_n_b4u0xk.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736129234/471446317_28784063887859345_6672267138283404274_n_je6dzh.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736129231/471596309_28784063867859347_1199395791306098689_n_nyeswl.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736129224/472100219_28784063877859346_3624406563850450163_n_lks9v8.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736129223/472358594_28784063894526011_6230595213674704763_n_dlwbcx.jpg"
]
skoda_octavia_photos.each do |url|
  skoda_octavia.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

progressbar.increment


bmw_320d = Car.create!(
  category: "Sedan",
  make: "BMW",
  model: "3 Series 320d M Sport",
  year: 2019,
  price: 15000.00,
  engine_type: "Inline-4 Diesel",
  fuel_type: "Diesel",
  engine_size: 1995,
  seats: 5,
  doors: 4,
  transmission: "Automatic",
  drivetrain: "Rear-wheel drive",
  registration_year: "2019/4",
  dimension: "4.71×1.83×1.44 m",
  chassis_no: "91,000",
  engine_code: "B47D20",
  steering: "Left",
  ext_color: "White",
  location: "Germany",
  weight: 1550,
  version_class: "M Sport",
  max_capacity: "560 kg",
  description: "The BMW 320d M Sport blend

  progressbar.increment

  s performance, efficiency, and luxury with an athletic edge for an engaging driving experience.",
  condition: "Used",
  availability: true
)

bmw_320d_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736129541/465974850_7056214551169433_2567844529178478427_n_jkcvkj.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736129538/466022717_7056214834502738_8876745336397225470_n_c58f1z.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736129535/465800322_7056214757836079_2389034636416920708_n_k0zvcx.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736129534/466143374_7056215141169374_8629513460454670326_n_meevtm.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736129520/466422661_7056214561169432_1182673477678431809_n_hupse9.jpg"
]
bmw_320d_photos.each do |url|
  bmw_320d.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

progressbar.increment


renault_clio = Car.create!(
  category: "Hatchback",
  make: "Renault",
  model: "Clio 1.0 TCe Iconic",
  year: 2022,
  price: 7500.00,
  engine_type: "Inline-3 Petrol",
  fuel_type: "Petrol",
  engine_size: 999,
  seats: 5,
  doors: 5,
  transmission: "Manual",
  drivetrain: "Front-wheel drive",
  registration_year: "2020/3",
  dimension: "4.05×1.80×1.44 m",
  chassis_no: "78,000",
  engine_code: "H5Ht",
  steering: "Right",
  ext_color: "Oranfe",
  location: "UK",
  weight: 1210,
  version_class: "Iconic",
  max_capacity: "450 kg",
  description: "The Renault Clio Iconic is a stylish and efficient hatchback packed with modern features, perfect for urban driving.",
  condition: "Used",
  availability: true
)

renault_clio_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736129723/467449915_1102841691844806_3124005576007833156_n_myickv.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736129726/467414367_1102841781844797_8469217131809792657_n_yfggl6.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736129720/467687764_1102841778511464_2882884426113537868_n_blf6hx.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736129710/467596433_1102841741844801_5652988376396286005_n_n3gd4e.jpg"
]
renault_clio_photos.each do |url|
  renault_clio.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

progressbar.increment


audi_q5 = Car.create!(
  category: "SUV",
  make: "Audi",
  model: "Q5 2.0 TDI Quattro S Line",
  year: 2018,
  price: 9000.00,
  engine_type: "Inline-4 Diesel",
  fuel_type: "Diesel",
  engine_size: 1968,
  seats: 5,
  doors: 5,
  transmission: "Manual",
  drivetrain: "All-wheel drive",
  registration_year: "2018/6",
  dimension: "4.66×1.89×1.65 m",
  chassis_no: "60,000",
  engine_code: "DFEA",
  steering: "Right",
  ext_color: "Blue",
  location: "United Kingdom",
  weight: 1820,
  version_class: "S Line",
  max_capacity: "620 kg",
  description: "The Audi Q5 S Line offers a premium SUV experience with luxurious design, advanced technology, and outstanding performance.",
  condition: "Used",
  availability: true
)

audi_q5_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736129990/465982964_969119111924959_8782374467584738268_n_1_mtkfrd.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736129987/465647522_969119135258290_1099309278349369308_n_a643je.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736129993/465253543_969119128591624_5241432889202900489_n_1_ojkbxi.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736129984/465600493_969119168591620_2511892480761044977_n_fjrztc.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736129982/465656905_969119078591629_6602381519627303931_n_b615zb.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736129979/466087296_969119595258244_1473367394348446521_n_fcr2zz.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736129976/465652245_969119638591573_5547288869316143211_n_vza5fj.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736129970/465739705_969119005258303_2310102374816071958_n_nyq5uz.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736129953/465791913_969119015258302_3606941341934966930_n_v6qkmo.jpg"
]
audi_q5_photos.each do |url|
  audi_q5.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

progressbar.increment


volvo_xc60 = Car.create!(
  category: "SUV",
  make: "Volvo",
  model: "XC60 D4 R-Design",
  year: 2019,
  price: 11000.00,
  engine_type: "Inline-4 Diesel",
  fuel_type: "Diesel",
  engine_size: 1969,
  seats: 5,
  doors: 5,
  transmission: "Automatic",
  drivetrain: "All-wheel drive",
  registration_year: "2017/9",
  dimension: "4.69×1.90×1.66 m",
  chassis_no: "82,000",
  engine_code: "D4204T14",
  steering: "Left",
  ext_color: "White",
  location: "Sweden",
  weight: 1815,
  version_class: "R-Design",
  max_capacity: "600 kg",
  description: "The Volvo XC60 R-Design combines safety, comfort, and a sporty design for an unmatched SUV experience.",
  condition: "Used",
  availability: true
)

volvo_xc60_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736130259/470882827_587788234013386_7191466298852894349_n_1_fnfccq.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736130296/471277663_587788360680040_2265555276890732672_n_nqlfq4.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736130287/471181509_587788410680035_6341854809751218623_n_sbhgvm.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736130285/471100199_587788450680031_6156696848352153955_n_r1azld.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736130275/471322293_587788527346690_1390373602844964549_n_j23jic.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736130282/470881175_587788484013361_2708630924481161918_n_oqjvcp.jpg"
]
volvo_xc60_photos.each do |url|
  volvo_xc60.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

progressbar.increment


mini_cooper = Car.create!(
  category: "Hatchback",
  make: "Mini",
  model: "Cooper S Hatch",
  year: 2021,
  price: 8000.00,
  engine_type: "Inline-4 Petrol",
  fuel_type: "Petrol",
  engine_size: 1998,
  seats: 4,
  doors: 3,
  transmission: "Manual",
  drivetrain: "Front-wheel drive",
  registration_year: "2015/11",
  dimension: "3.85×1.73×1.41 m",
  chassis_no: "63,000",
  engine_code: "B48A20",
  steering: "Right",
  ext_color: "Red",
  location: "United Kingdom",
  weight: 1255,
  version_class: "S",
  max_capacity: "380 kg",
  description: "The Mini Cooper S Hatch is a compact and sporty hatchback with go-kart handling and timeless charm.",
  condition: "Used",
  availability: true
)

mini_cooper_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736130616/471587250_1070204281786540_3708956160622302050_n_p0wfwf.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736130578/471409800_1070204351786533_4523682230145498540_n_xtdzr0.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736130580/471513996_1070204341786534_6654988961494751022_n_ztbyxw.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736130575/471691260_1070204448453190_6296365132857477812_n_ddcsoz.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736130572/471502369_1070204545119847_526912703947094590_n_uxjavy.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736130570/471843020_1070204551786513_1303924969780550344_n_airagr.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736130567/471699334_1070204548453180_5383202275571194839_n_qymwux.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736130541/471413861_1070204628453172_4837154511932273608_n_wibxrt.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736130539/471333595_1070204618453173_7382266421189119474_n_cnped5.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736130536/471441410_1070204631786505_2116989065349687188_n_hyeyqs.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1736130514/471325799_1070204708453164_6353869878352640909_n_jbaiig.jpg"
]
mini_cooper_photos.each do |url|
  mini_cooper.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end

progressbar.increment


puts "Seeding completed: Created #{Car.count} cars"
