# Seed 1: Mazda CX-5
# Total number of cars you will create


puts "Has #{Car.count} cars available"
total_cars =

# Initialize the progress bar
progressbar = ProgressBar.create(total: total_cars, format: "%a %bᗧ%i %p%% %t")

mazda_cx5 = Car.create!(
  category: "SUV",
  make: "Mazda",
  model: "CX-5",
  year: 2018,
  price: 13450.00,
  engine_type: "Inline-4",
  fuel_type: "Petrol",
  engine_size: 1290,
  seats: 5,
  doors: 5,
  transmission: "Automatic",
  drivetrain: "2-wheel drive",
  registration_year: "2018/3",
  dimension: "4.06×1.69×1.52 m",
  chassis_no: "56,000",
  engine_code: "P3",
  steering: "Right",
  ext_color: "Red",
  location: "Korea",
  weight: 1040,
  version_class: "13S TAILORED BROWN",
  max_capacity: "500 kg",
  description: "The Mazda CX-5 is a stylish and efficient compact SUV, offering premium features and a comfortable ride for families and adventurers.",
  condition: "Used",
  availability: true
)

mazda_cx5_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735674486/2018-Mazda-CX-5-20-Dynamic-Auto_1_yoittd.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735674486/2018-Mazda-CX-5-20-Dynamic-Auto_ztyeoc.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735674486/2018-Mazda-CX-5-20-Dynamic-Auto_2_wqthxb.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735674485/2018-Mazda-CX-5-20-Dynamic-Auto_6_zlvmpk.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735674485/2018-Mazda-CX-5-20-Dynamic-Auto_4_kuabmf.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735674485/2018-Mazda-CX-5-20-Dynamic-Auto_5_yngtmv.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735674485/2018-Mazda-CX-5-20-Dynamic-Auto_7_bxgkwo.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735674484/2018-Mazda-CX-5-20-Dynamic-Auto_8_elywj1.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735674485/2018-Mazda-CX-5-20-Dynamic-Auto_3_wzmwnf.avif"
]

mazda_cx5_photos.each do |url|
  mazda_cx5.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment



# Seed 2: Toyota Corolla
toyota_corolla = Car.create!(
  category: "Sedan",
  make: "Toyota",
  model: "Corolla",
  year: 2020,
  price: 9500.00,
  engine_type: "Inline-4",
  fuel_type: "Petrol",
  engine_size: 1800,
  seats: 5,
  doors: 4,
  transmission: "Automatic",
  drivetrain: "Front-wheel drive",
  registration_year: "2020/7",
  dimension: "4.62×1.78×1.43 m",
  chassis_no: "79,790",
  engine_code: "2ZR-FE",
  steering: "Left",
  ext_color: "Blue Crush Metallic",
  location: "Usa",
  weight: 1265,
  version_class: "SE",
  max_capacity: "550 kg",
  description: "The Toyota Corolla is a dependable and fuel-efficient sedan, featuring a spacious interior and advanced safety technologies.",
  condition: "New",
  availability: true
)

toyota_corolla_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735675708/img-3-960x_i95omh.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735675708/img-4-960x_lkxbgd.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735675708/img-2-960x_gdyoyo.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735675707/img-5-960x_zh0iwn.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735675673/img-6-960x_dp2o1s.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735675669/img-7-960x_sops5w.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735675669/img-9-960x_eeziv2.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735675669/img-8-960x_u5jxgi.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735675669/img-11-960x_gaadpz.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735675669/img-15-960x_kkf3lu.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735675669/img-12-960x_paej7t.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735675668/img-13-960x_opigl1.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735675668/img-21-960x_mkvl8g.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735675668/img-31-960x_cgjtbb.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735675668/img-32-960x_tbstox.avif"
]

toyota_corolla_photos.each do |url|
  toyota_corolla.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment


# Seed 3: Ford F-150
ford_f150 = Car.create!(
  category: "Truck",
  make: "Ford",
  model: "F-150",
  year: 2017,
  price: 10190.00,
  engine_type: "V6 Turbocharged",
  fuel_type: "Petrol",
  engine_size: 3000,
  seats: 5,
  doors: 4,
  transmission: "Automatic",
  drivetrain: "4-wheel drive",
  registration_year: "2019/6",
  dimension: "5.89×2.03×1.92 m",
  chassis_no: "148,585",
  engine_code: "3.5L EcoBoost",
  steering: "Left",
  ext_color: "Magnetic Metallic",
  location: "USA",
  weight: 2136,
  version_class: "XLT",
  max_capacity: "800 kg",
  description: "The Ford F-150 is a powerful and rugged full-size truck, designed for heavy-duty work and off-road adventures.",
  condition: "Used",
  availability: true
)

ford_f150_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735676228/img-5-960x_1_rsq0lu.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735676228/img-5-960x_1_rsq0lu.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735676228/img-6-960x_1_tixlf7.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735676227/img-8-960x_1_cs2hd3.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735676199/img-9-960x_1_hzobvs.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735676199/img-17-960x_hcojbz.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735676199/img-21-960x_1_tfk6jd.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735676199/img-20-960x_m5wnd1.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735676199/img-22-960x_q1herr.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735676198/img-36-960x_t9bxw2.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735676198/img-23-960x_aty6fd.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735676198/img-26-960x_nhxu58.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735676198/img-38-960x_p98jgr.avif"
]

ford_f150_photos.each do |url|
  ford_f150.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment


# Seed 4: Honda CR-V
honda_crv = Car.create!(
  category: "SUV",
  make: "Honda",
  model: "CR-V",
  year: 2021,
  price: 28900.00,
  engine_type: "Inline-4 Turbocharged",
  fuel_type: "Petrol",
  engine_size: 1500,
  seats: 5,
  doors: 5,
  transmission: "CVT",
  drivetrain: "All-wheel drive",
  registration_year: "2021/9",
  dimension: "4.60×1.85×1.68 m",
  chassis_no: "766,866",
  engine_code: "L15B7",
  steering: "Left",
  ext_color: "Sonic Grey Pearl",
  location: "Usa",
  weight: 1550,
  version_class: "EX-L",
  max_capacity: "600 kg",
  description: "The Honda CR-V combines sleek design, advanced technology, and dependable performance. It's perfect for families and adventurers alike.",
  condition: "New",
  availability: true
)

honda_crv_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735676794/img-3-960x_j473zb.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735676794/img-4-960x_wlrx7i.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735676794/img-2-960x_jot1ug.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735676793/img-7-960x_hbyacu.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735676793/img-5-960x_nlteyr.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735676789/img-11-960x_csy1ko.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735676789/img-10-960x_moun3y.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735676789/img-8-960x_xru6yn.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735676789/img-9-960x_vcyhyh.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735676788/img-31-960x_bdxx6t.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735676788/img-13-960x_okvg20.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735676788/img-16-960x_a8fimn.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735676788/img-23-960x_zwgunz.avif"
]

honda_crv_photos.each do |url|
  honda_crv.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment


# Seed 5: BMW 3 Series
bmw_3_series = Car.create!(
  category: "Sedan",
  make: "BMW",
  model: "3 Series",
  year: 2011,
  price: 41000.00,
  engine_type: "Inline-6 Turbocharged",
  fuel_type: "Petrol",
  engine_size: 3000,
  seats: 5,
  doors: 4,
  transmission: "Automatic",
  drivetrain: "Rear-wheel drive",
  registration_year: "2020/3",
  dimension: "4.71×1.82×1.44 m",
  chassis_no: "97,947",
  engine_code: "B58",
  steering: "Left",
  ext_color: "Alpine White",
  location: "Germany",
  weight: 1580,
  version_class: "330i Sport Line",
  max_capacity: "450 kg",
  description: "The BMW 3 Series is a luxurious sports sedan offering exhilarating performance, sophisticated design, and cutting-edge technology.",
  condition: "Used",
  availability: true
)

bmw_3_series_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735677318/img-3-960x_1_ukz2sj.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735677314/img-2-960x_1_ior1zh.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735677314/img-7-960x_1_unvvto.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735677313/img-16-960x_1_zly4s2.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735677346/img-20-960x_tjtelt.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735677347/img-25-960x_rffw8c.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735677350/img-8-960x_1_ouexuu.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735677349/img-35-960x_fau8vc.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735677347/img-30-960x_ppcts6.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735677313/img-14-960x_acyy8e.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735677313/img-17-960x_xxp1ho.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735677313/img-19-960x_vdneg9.avif"
]

bmw_3_series_photos.each do |url|
  bmw_3_series.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment


# Seed 6: Chevrolet Silverado
chevrolet_silverado = Car.create!(
  category: "Truck",
  make: "Chevrolet",
  model: "Silverado 1500",
  year: 2016,
  price: 21000.00,
  engine_type: "V8",
  fuel_type: "Petrol",
  engine_size: 6200,
  seats: 5,
  doors: 4,
  transmission: "Automatic",
  drivetrain: "4-wheel drive",
  registration_year: "2022/4",
  dimension: "5.88×2.06×1.95 m",
  chassis_no: "84,565",
  engine_code: "L87",
  steering: "Left",
  ext_color: "Black",
  location: "USA",
  weight: 2245,
  version_class: "High Country",
  max_capacity: "900 kg",
  description: "The Chevrolet Silverado is a robust and versatile full-size truck, offering impressive towing capacity, advanced safety features, and exceptional performance.",
  condition: "Used",
  availability: true
)

chevrolet_silverado_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735677648/img-4-960x_1_aexk3k.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735677649/img-3-960x_2_g9lpf9.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735677651/img-2-960x_2_y7nkil.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735677647/img-5-960x_1_s0v9th.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735677646/img-8-960x_2_f5sy8r.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735677645/img-10-960x_1_dc0isj.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735677644/img-12-960x_1_hpz05q.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735677642/img-13-960x_1_yw3bik.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735677641/img-18-960x_1_j4letl.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735677640/img-33-960x_juph0o.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735677641/img-20-960x_1_oyuglu.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735677640/img-25-960x_1_v56tgm.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735677639/img-37-960x_du7bxt.avif"
]

chevrolet_silverado_photos.each do |url|
  chevrolet_silverado.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment


honda_crv = Car.create!(
  category: "SUV",
  make: "Honda",
  model: "CR-V",
  year: 2015,
  price: 8900.00,
  engine_type: "Inline-4 Turbocharged",
  fuel_type: "Petrol",
  engine_size: 1500,
  seats: 5,
  doors: 5,
  transmission: "CVT",
  drivetrain: "All-wheel drive",
  registration_year: "2021/9",
  dimension: "4.60×1.85×1.68 m",
  chassis_no: "144150",
  engine_code: "L15B7",
  steering: "Left",
  ext_color: "Urban Titanium Metallic",
  location: "Japan",
  weight: 1550,
  version_class: "EX-L",
  max_capacity: "600 kg",
  description: "The Honda CR-V combines sleek design, advanced technology, and dependable performance. It's perfect for families and adventurers alike.",
  condition: "New",
  availability: true
)

honda_crv_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735678140/img-1-960x_1_gm5vzb.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735678142/img-8-960x_3_eaq8vr.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735678141/img-2-960x_4_lv8fs8.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735678138/img-11-960x_ve1cua.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735678137/img-14-960x_1_v6kqgv.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735678137/img-15-960x_1_usygah.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735678136/img-18-960x_kjzba4.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735678133/img-21-960x_gud78i.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735678133/img-19-960x_x75qp4.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735678133/img-27-960x_indewy.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735678132/img-32-960x_viz8b2.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735678132/img-30-960x_zbicdl.jpg"
]

honda_crv_photos.each do |url|
  honda_crv.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment

nissan_rogue = Car.create!(
  category: "SUV",
  make: "Nissan",
  model: "Rogue",
  year: 2023,
  price: 17450.00,
  engine_type: "Inline-4",
  fuel_type: "Petrol",
  engine_size: 2500,
  seats: 5,
  doors: 5,
  transmission: "CVT",
  drivetrain: "Front-wheel drive",
  registration_year: "2021/8",
  dimension: "4.64×1.83×1.68 m",
  chassis_no: "45,755",
  engine_code: "PR25DD",
  steering: "Left",
  ext_color: "Glacier White",
  location: "France",
  weight: 1500,
  version_class: "SV",
  max_capacity: "620 kg",
  description: "The Nissan Rogue offers a smooth ride, cutting-edge features, and spacious interiors.",
  condition: "New",
  availability: true
)

nissan_rogue_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735678631/img-3-960x_cigcjj.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735678629/img-4-960x_fbj9hi.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735678629/img-5-960x_tirspi.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735678624/img-6-960x_ewvorf.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735678622/img-7-960x_l8pd6h.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735678621/img-8-960x_imxlqs.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735678608/img-9-960x_sbsypg.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735678607/img-22-960x_fou8a6.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735678608/img-12-960x_cko6bn.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735678607/img-17-960x_1_hojin1.jpg"
]
nissan_rogue_photos.each do |url|
  nissan_rogue.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment


ford_escape = Car.create!(
  category: "SUV",
  make: "Ford",
  model: "Escape",
  year: 2022,
  price: 11900.00,
  engine_type: "Inline-3 Turbocharged",
  fuel_type: "Petrol",
  engine_size: 1500,
  seats: 5,
  doors: 5,
  transmission: "Automatic",
  drivetrain: "Front-wheel drive",
  registration_year: "2023/4",
  dimension: "4.61×1.88×1.66 m",
  chassis_no: "47,221",
  engine_code: "EcoBoost",
  steering: "Left",
  ext_color: "Velocity Blue Metallic",
  location: "USA",
  weight: 1495,
  version_class: "SE",
  max_capacity: "630 kg",
  description: "The Ford Escape is designed to offer a blend of efficiency, comfort, and technology.",
  condition: "Used",
  availability: true
)

ford_escape_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735679042/img-1-960x_2_gtupi2.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735679020/img-2-960x_5_lmcgap.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735679018/img-3-960x_3_brwrgj.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735679016/img-5-960x_2_by26um.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735679013/img-6-960x_1_s8j0j5.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735679007/img-7-960x_1_ajffyb.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735679007/img-10-960x_2_jh8ghn.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735679005/img-13-960x_2_bl0pee.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735678981/img-14-960x_2_rpu0te.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735678978/img-16-960x_2_u71ibj.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735678977/img-20-960x_2_xaylm4.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735678971/img-24-960x_fob9jm.jpg"
]
ford_escape_photos.each do |url|
  ford_escape.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment

hyundai_tucson = Car.create!(
  category: "SUV",
  make: "Hyundai",
  model: "Tucson",
  year: 2022,
  price: 20900.00,
  engine_type: "Inline-4",
  fuel_type: "Petrol",
  engine_size: 2000,
  seats: 5,
  doors: 5,
  transmission: "Automatic",
  drivetrain: "Front-wheel drive",
  registration_year: "2022/6",
  dimension: "4.50×1.87×1.66 m",
  chassis_no: "2,490",
  engine_code: "NU 2.0 MPI",
  steering: "Left",
  ext_color: "Dark Gray Metallic",
  location: "Korea",
  weight: 1550,
  version_class: "SEL",
  max_capacity: "620 kg",
  description: "The Hyundai Tucson offers a bold design, advanced safety features, and comfortable interiors.",
  condition: "New",
  availability: true
)

hyundai_tucson_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735679537/img-3-960x_1_adlw6x.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735679534/img-7-960x_2_pth8sw.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735679536/img-5-960x_1_df7qwg.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735679534/img-7-960x_2_pth8sw.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735679535/img-6-960x_1_owuysz.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735679531/img-11-960x_2_lzuvuq.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735679530/img-18-960x_1_eiewfm.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735679530/img-16-960x_1_hfz6xd.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735679529/img-21-960x_1_fbkmv4.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735679528/img-28-960x_ewcjrt.jpg"
]
hyundai_tucson_photos.each do |url|
  hyundai_tucson.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment

kia_sportage = Car.create!(
  category: "SUV",
  make: "Kia",
  model: "Sportage",
  year: 2022,
  price: 12900.00,
  engine_type: "Inline-4",
  fuel_type: "Petrol",
  engine_size: 2400,
  seats: 5,
  doors: 5,
  transmission: "Automatic",
  drivetrain: "All-wheel drive",
  registration_year: "2023/3",
  dimension: "4.66×1.86×1.65 m",
  chassis_no: "65,263",
  engine_code: "G4KJ",
  steering: "Left",
  ext_color: "Pacific Blue",
  location: "Canada",
  weight: 1625,
  version_class: "EX",
  max_capacity: "600 kg",
  description: "The Kia Sportage is a dynamic SUV with bold styling, efficient performance, and innovative features.",
  condition: "Used",
  availability: true
)

kia_sportage_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735684357/img-1-960x_3_gbwveu.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735684356/img-2-960x_6_bj7awl.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735684354/img-4-960x_2_zypfhz.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735684352/img-5-960x_3_con3wz.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735684350/img-6-960x_2_g1ibi9.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735684350/img-7-960x_3_uuih3p.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735684345/img-9-960x_1_ojwojz.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735684342/img-12-960x_1_rjxtcl.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735684341/img-13-960x_manrnn.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735684338/img-24-960x_1_byjz2r.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735684337/img-25-960x_hiuszk.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735684324/img-30-960x_1_ucuhbt.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735684323/img-31-960x_tit8qr.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735684323/img-32-960x_1_q1dpam.jpg"
]
kia_sportage_photos.each do |url|
  kia_sportage.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment

kia_14 = Car.create!(
  category: "SUV",
  make: "Kia",
  model: "Sportage",
  year: 2014,
  price: 7900.00,
  engine_type: "Inline-4",
  fuel_type: "Petrol",
  engine_size: 2400,
  seats: 5,
  doors: 5,
  transmission: "Automatic",
  drivetrain: "All-wheel drive",
  registration_year: "2023/3",
  dimension: "4.66×1.86×1.65 m",
  chassis_no: "53,476",
  engine_code: "G4KJ",
  steering: "Left",
  ext_color: "Sage green",
  location: "Canada",
  weight: 1625,
  version_class: "EX",
  max_capacity: "600 kg",
  description: "The Kia Sportage is a dynamic SUV with bold styling, efficient performance, and innovative features.",
  condition: "Used",
  availability: true
)

kia_14_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735684712/img-4-960x_1_ginbvo.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735684714/img-6-960x_2_yppgjs.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735684711/img-8-960x_2_e5bsb4.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735684709/img-9-960x_2_rcyqic.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735684707/img-10-960x_xbqm9e.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735684706/img-11-960x_3_ebsexn.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735684700/img-12-960x_2_dwvfcb.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735684697/img-13-960x_1_nl6qtr.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735684696/img-14-960x_otlva2.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735684630/img-15-960x_lwtseq.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735684629/img-20-960x_1_yojhie.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735684621/img-27-960x_1_iryyv0.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735684620/img-33-960x_qsxh3x.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735684619/img-51-960x_uvqauw.jpg"
]
kia_14_photos.each do |url|
  kia_14.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment

chevrolet_equinox = Car.create!(
  category: "SUV",
  make: "Chevrolet",
  model: "Equinox",
  year: 2017,
  price: 6900.00,
  engine_type: "Inline-4 Turbocharged",
  fuel_type: "Petrol",
  engine_size: 1500,
  seats: 5,
  doors: 5,
  transmission: "Automatic",
  drivetrain: "Front-wheel drive",
  registration_year: "2022/5",
  dimension: "4.65×1.85×1.67 m",
  chassis_no: "122,341",
  engine_code: "LFV",
  steering: "Left",
  ext_color: "Nightfall Gray Metallic",
  location: "Japan",
  weight: 1555,
  version_class: "LT",
  max_capacity: "620 kg",
  description: "The Chevrolet Equinox offers a balance of comfort, technology, and affordability.",
  condition: "Used",
  availability: true
)

chevrolet_equinox_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735685467/img-1-960x_4_nw2uhq.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735685465/img-2-960x_nybw3w.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735685464/img-3-960x_iohcrc.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735685462/img-4-960x_xw7ozm.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735685461/img-5-960x_athxks.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735685446/img-6-960x_alyogz.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735685445/img-15-960x_oslwkw.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735685426/img-21-960x_f4lhby.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735685425/img-25-960x_turpyr.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735685412/img-27-960x_u6zozp.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735685412/img-30-960x_drmgcz.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735685412/img-40-960x_wqfufg.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735685411/img-45-960x_qlspzv.avif"
]
chevrolet_equinox_photos.each do |url|
  chevrolet_equinox.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment

chevrolet_equinox23 = Car.create!(
  category: "SUV",
  make: "Chevrolet",
  model: "Equinox",
  year: 2023,
  price: 12900.00,
  engine_type: "Inline-4 Turbocharged",
  fuel_type: "Petrol",
  engine_size: 1500,
  seats: 5,
  doors: 5,
  transmission: "Automatic",
  drivetrain: "Front-wheel drive",
  registration_year: "2022/5",
  dimension: "4.65×1.85×1.67 m",
  chassis_no: "12,823",
  engine_code: "LFV",
  steering: "Left",
  ext_color: "Summit White",
  location: "Usa",
  weight: 1555,
  version_class: "LT",
  max_capacity: "620 kg",
  description: "The Chevrolet Equinox offers a balance of comfort, technology, and affordability.",
  condition: "Used",
  availability: true
)

chevrolet_equinox23_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735685797/img-4-960x_1_rz8itq.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735685798/img-3-960x_wg8de9.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735685795/img-5-960x_ocfcql.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735685794/img-6-960x_1_a4r8jq.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735685791/img-7-960x_ciolbj.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735685775/img-8-960x_c4j392.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735685774/img-9-960x_qxgzb0.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735685758/img-10-960x_nrcb18.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735685756/img-17-960x_e4eupi.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735685740/img-19-960x_opxowm.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735685735/img-20-960x_ovh82b.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735685735/img-23-960x_y4g5ho.avif"
]
chevrolet_equinox23_photos.each do |url|
  chevrolet_equinox23.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment

chevrolet_tahoe = Car.create!(
  category: "SUV",
  make: "Chevrolet",
  model: "Tahoe",
  year: 2013,
  price: 7900.00,
  engine_type: "V8",
  fuel_type: "Petrol",
  engine_size: 5300,
  seats: 8,
  doors: 5,
  transmission: "Automatic",
  drivetrain: "Rear-wheel drive",
  registration_year: "2023/5",
  dimension: "5.35×2.05×1.95 m",
  chassis_no: "158,816",
  engine_code: "EcoTec3",
  steering: "Left",
  ext_color: "Black",
  location: "USA",
  weight: 2500,
  version_class: "LT",
  max_capacity: "900 kg",
  description: "The Chevrolet Tahoe offers a commanding presence, spacious interiors, and robust performance.",
  condition: "Used",
  availability: true
)

chevrolet_tahoe_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735686252/img-1-960x_kzdclc.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735686253/img-8-960x_hnc0p3.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735686256/img-3-960x_1_iirudy.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735686250/img-2-960x_2_h5xcfj.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735686249/img-3-960x_2_hoyw68.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735686247/img-4-960x_hvxbwr.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735686246/img-7-960x_wlgwpj.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735686244/img-9-960x_1_iklgnd.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735686242/img-10-960x_1_zd71wm.avif"
]
chevrolet_tahoe_photos.each do |url|
  chevrolet_tahoe.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment

chevrolet_tahoe23 = Car.create!(
  category: "SUV",
  make: "Chevrolet",
  model: "Tahoe",
  year: 2023,
  price: 52900.00,
  engine_type: "V8",
  fuel_type: "Petrol",
  engine_size: 5300,
  seats: 8,
  doors: 5,
  transmission: "Automatic",
  drivetrain: "Rear-wheel drive",
  registration_year: "2023/5",
  dimension: "5.35×2.05×1.95 m",
  chassis_no: "56,920",
  engine_code: "EcoTec3",
  steering: "Left",
  ext_color: "White",
  location: "USA",
  weight: 2500,
  version_class: "LT",
  max_capacity: "900 kg",
  description: "The Chevrolet Tahoe offers a commanding presence, spacious interiors, and robust performance.",
  condition: "Used",
  availability: true
)

chevrolet_tahoe23_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735687102/img-1-960x_1_a9cixo.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735687103/img-2-960x_3_avless.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735687100/img-4-960x_1_scbhes.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735687089/img-24-960x_rhves0.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735687091/img-23-960x_1_rbfcj7.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735687093/img-22-960x_bme7vw.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735687098/img-10-960x_3_yg0xzo.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735687096/img-15-960x_1_pot4ta.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735687094/img-19-960x_sfdwq2.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735687087/img-25-960x_1_mrvq6y.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735687086/img-26-960x_z7jpo6.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735687085/img-28-960x_1_wwnsxw.avif"
]
chevrolet_tahoe23_photos.each do |url|
  chevrolet_tahoe23.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment

toyota_camry = Car.create!(
  category: "Sedan",
  make: "Toyota",
  model: "Camry",
  year: 2023,
  price: 15900.00,
  engine_type: "Inline-4",
  fuel_type: "Petrol",
  engine_size: 2500,
  seats: 5,
  doors: 4,
  transmission: "Automatic",
  drivetrain: "Front-wheel drive",
  registration_year: "2023/4",
  dimension: "4.90×1.84×1.45 m",
  chassis_no: "30,788",
  engine_code: "A25A-FXS",
  steering: "Left",
  ext_color: "Ice Cap",
  location: "USA",
  weight: 1510,
  version_class: "XSE",
  max_capacity: "500 kg",
  description: "The Toyota Camry delivers outstanding fuel efficiency and a comfortable ride, making it a top choice for commuters.",
  condition: "Used",
  availability: true
)

toyota_camry_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735717122/img-2-960x_1_mkgrzc.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735717122/img-4-960x_1_gsrc4r.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735717122/img-5-960x_1_oykkoo.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735717122/img-3-960x_1_teuutt.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735717121/img-20-960x_gzcg3s.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735717121/img-9-960x_txolsp.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735717121/img-7-960x_vfaqpf.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735717121/img-11-960x_tp5epm.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735717121/img-12-960x_cinrsq.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735717121/img-18-960x_o8vhjh.jpg"
]
toyota_camry_photos.each do |url|
  toyota_camry.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment

ram_1500 = Car.create!(
  category: "Pickup",
  make: "Ram",
  model: "1500",
  year: 2021,
  price: 21900.00,
  engine_type: "V8",
  fuel_type: "Petrol",
  engine_size: 5700,
  seats: 5,
  doors: 4,
  transmission: "Automatic",
  drivetrain: "Four-wheel drive",
  registration_year: "2023/7",
  dimension: "5.90×2.09×1.97 m",
  chassis_no: "127.1382",
  engine_code: "HEMI",
  steering: "Left",
  ext_color: "Patriot Blue Pearl Coat",
  location: "USA",
  weight: 2700,
  version_class: "Laramie",
  max_capacity: "1100 kg",
  description: "The Ram 1500 is a rugged, full-size pickup truck with exceptional towing capabilities and advanced tech features.",
  condition: "Used",
  availability: true
)

ram_1500_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735717892/img-2-960x_2_lemgqm.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735717888/img-3-960x_2_op6u6g.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735717887/img-5-960x_2_rjojsc.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735717887/img-9-960x_1_w2u0pl.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735717887/img-6-960x_1_jfztpx.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735717887/img-11-960x_1_rkyyy0.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735717887/img-13-960x_uqn5yt.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735717887/img-17-960x_flfatl.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735717886/img-20-960x_1_duz85c.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735717886/img-40-960x_ntxqcf.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735717886/img-25-960x_aqwtoy.avif"
]
ram_1500_photos.each do |url|
  ram_1500.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment

tesla_model_y = Car.create!(
  category: "SUV",
  make: "Tesla",
  model: "Model Y",
  year: 2020,
  price: 18990.00,
  engine_type: "Electric",
  fuel_type: "Electric",
  engine_size: nil,
  seats: 5,
  doors: 5,
  transmission: "Automatic",
  drivetrain: "All-wheel drive",
  registration_year: "2023/6",
  dimension: "4.75×1.92×1.62 m",
  chassis_no: "76,100",
  engine_code: nil,
  steering: "Left",
  ext_color: "Deep Blue Metallic",
  location: "USA",
  weight: 1970,
  version_class: "Long Range",
  max_capacity: "750 kg",
  description: "The Tesla Model Y is an electric SUV offering cutting-edge technology, impressive range, and modern design.",
  condition: "Used",
  availability: true
)

tesla_model_y_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735718446/img-5-960x_ysbale.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735718445/img-7-960x_n78jcw.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735718445/img-6-960x_tahs9w.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735718445/img-3-960x_mqiwkf.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735718444/img-8-960x_zviqeg.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735718403/img-9-960x_obixde.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735718402/img-10-960x_saeyic.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735718402/img-12-960x_1_euipwn.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735718402/img-16-960x_a55baz.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735718402/img-14-960x_nfoooh.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735718402/img-17-960x_1_u1wuga.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735718402/img-20-960x_2_zel9fi.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735718402/img-24-960x_gab08p.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735718402/img-23-960x_lcujs8.avif"
]
tesla_model_y_photos.each do |url|
  tesla_model_y.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment

tesla_model22 = Car.create!(
  category: "SUV",
  make: "Tesla",
  model: "Model Y",
  year: 2022,
  price: 20990.00,
  engine_type: "Electric",
  fuel_type: "Electric",
  engine_size: nil,
  seats: 5,
  doors: 5,
  transmission: "Automatic",
  drivetrain: "All-wheel drive",
  registration_year: "2023/6",
  dimension: "4.75×1.92×1.62 m",
  chassis_no: "64,467",
  engine_code: nil,
  steering: "Left",
  ext_color: "Red multi-coat",
  location: "USA",
  weight: 1970,
  version_class: "Long Range",
  max_capacity: "750 kg",
  description: "The Tesla Model Y is an electric SUV offering cutting-edge technology, impressive range, and modern design.",
  condition: "Used",
  availability: true
)

tesla_model22_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735718939/img-3-960x_jmym8z.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735718939/img-5-960x_1_dvwahk.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735718940/img-6-960x_2_tt9mbf.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735718938/img-7-960x_1_qh7f6y.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735718918/img-8-960x_1_exan3i.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735718918/img-9-960x_2_qe631w.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735718918/img-10-960x_oz1fbx.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735718913/img-13-960x_zufdgq.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735718913/img-12-960x_2_uzyhis.avif"
]
tesla_model22_photos.each do |url|
  tesla_model22.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment

tesla_model_3 = Car.create!(
  category: "SUV",
  make: "Tesla",
  model: "Model 3",
  year: 2023,
  price: 18990.00,
  engine_type: "Electric",
  fuel_type: "Electric",
  engine_size: nil,
  seats: 5,
  doors: 5,
  transmission: "Automatic",
  drivetrain: "All-wheel drive",
  registration_year: "2023/6",
  dimension: "4.75×1.92×1.62 m",
  chassis_no: "58,425",
  engine_code: nil,
  steering: "Left",
  ext_color: "Pearl white multi-coat",
  location: "USA",
  weight: 1970,
  version_class: "Long Range",
  max_capacity: "750 kg",
  description: "The Tesla Model Y is an electric SUV offering cutting-edge technology, impressive range, and modern design.",
  condition: "Used",
  availability: true
)

tesla_model_3_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735719444/img-5-960x_3_ssn8cy.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735719442/img-6-960x_3_zekny5.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735719442/img-7-960x_2_ppjcst.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735719441/img-9-960x_3_qoa3pc.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735719441/img-8-960x_2_fzxbjg.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735719439/img-10-960x_1_komn3u.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735719438/img-13-960x_1_dweize.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735719438/img-14-960x_1_wweeki.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735719421/img-18-960x_jfmcsi.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735719421/img-16-960x_ryirw3.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735719421/img-17-960x_2_drvazz.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735719420/img-21-960x_zjnpdr.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735719420/img-22-960x_1_wguyky.avif"
]
tesla_model_3_photos.each do |url|
  tesla_model_3.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment

nissan_altima = Car.create!(
  category: "Sedan",
  make: "Nissan",
  model: "Altima",
  year: 2021,
  price: 12400.00,
  engine_type: "Inline-4 Turbocharged",
  fuel_type: "Petrol",
  engine_size: 2000,
  seats: 5,
  doors: 4,
  transmission: "CVT",
  drivetrain: "Front-wheel drive",
  registration_year: "2023/5",
  dimension: "4.90×1.85×1.44 m",
  chassis_no: "60,017",
  engine_code: "VC-Turbo",
  steering: "Left",
  ext_color: "Brilliant Silver Metallic",
  location: "USA",
  weight: 1485,
  version_class: "SR",
  max_capacity: "520 kg",
  description: "The Nissan Altima offers advanced safety features and a comfortable ride, ideal for everyday commutes.",
  condition: "Used",
  availability: true
)

nissan_altima_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735722235/img-1-960x_bdlil6.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735722233/img-2-960x_qnw4vx.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735722230/img-5-960x_hmjgnh.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735722232/img-3-960x_1_ul4ypp.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735722231/img-4-960x_jp1sxo.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735722230/img-8-960x_t36mz0.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735722226/img-21-960x_kctaot.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735722227/img-10-960x_2_plbiv3.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735722226/img-18-960x_1_faimdk.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735722226/img-25-960x_znk2mv.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735722225/img-26-960x_ki9cdo.jpg"
]
nissan_altima_photos.each do |url|
  nissan_altima.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment

chevrolet_silverado = Car.create!(
  category: "Pickup",
  make: "Chevrolet",
  model: "Silverado 1500",
  year: 2020,
  price: 20800.00,
  engine_type: "V8",
  fuel_type: "Petrol",
  engine_size: 5300,
  seats: 5,
  doors: 4,
  transmission: "Automatic",
  drivetrain: "Four-wheel drive",
  registration_year: "2023/8",
  dimension: "5.89×2.07×1.92 m",
  chassis_no: "49,140",
  engine_code: "EcoTec3",
  steering: "Left",
  ext_color: "Northsky Blue Metallic",
  location: "USA",
  weight: 2600,
  version_class: "Z71",
  max_capacity: "1000 kg",
  description: "The Chevrolet Silverado 1500 combines modern styling with outstanding towing and hauling capabilities.",
  condition: "Used",
  availability: true
)

chevrolet_silverado_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735722714/img-4-960x_h9vjzg.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735722714/img-3-960x_1_qzppdh.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735722713/img-5-960x_4_d3ypno.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735722712/img-7-960x_3_edex7r.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735722710/img-8-960x_3_wqdihc.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735722709/img-13-960x_2_eeemvu.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735722709/img-10-960x_1_bdrjc0.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735722708/img-15-960x_k49n5h.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735722709/img-14-960x_srfd9l.jpg"
]
chevrolet_silverado_photos.each do |url|
  chevrolet_silverado.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment

dodge_charger = Car.create!(
  category: "Sedan",
  make: "Dodge",
  model: "Charger",
  year: 2023,
  price: 34900.00,
  engine_type: "V8",
  fuel_type: "Petrol",
  engine_size: 5700,
  seats: 5,
  doors: 4,
  transmission: "Automatic",
  drivetrain: "Rear-wheel drive",
  registration_year: "2023/2",
  dimension: "5.10×1.90×1.48 m",
  chassis_no: "71,900",
  engine_code: "HEMI",
  steering: "Left",
  ext_color: "Blue",
  location: "USA",
  weight: 1905,
  version_class: "Scat Pack",
  max_capacity: "550 kg",
  description: "The Dodge Charger delivers an iconic blend of muscle car performance and modern sedan comfort.",
  condition: "Used",
  availability: true
)

dodge_charger_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735723095/img-1-960x_1_kiel1c.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735723092/img-2-960x_1_czobug.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735723092/img-4-960x_2_cstied.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735723092/img-3-960x_4_tnpgc6.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735723091/img-6-960x_5_wy75j5.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735723091/img-5-960x_6_ifp7eg.avif"
]
dodge_charger_photos.each do |url|
  dodge_charger.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment

ford_f150 = Car.create!(
  category: "Pickup",
  make: "Ford",
  model: "F-150",
  year: 2024,
  price: 27895.00,
  engine_type: "V6 Turbocharged",
  fuel_type: "Petrol",
  engine_size: 3500,
  seats: 6,
  doors: 4,
  transmission: "Automatic",
  drivetrain: "Four-wheel drive",
  registration_year: "2023/4",
  dimension: "5.89×2.03×1.96 m",
  chassis_no: "9504",
  engine_code: "PowerBoost",
  steering: "Left",
  ext_color: "Avalanche",
  location: "USA",
  weight: 2250,
  version_class: "Lariat",
  max_capacity: "1040 kg",
  description: "The Ford F-150 combines robust performance with cutting-edge technology, making it a top choice for work and leisure.",
  condition: "Used",
  availability: true
)

ford_f150_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735724003/img-1-960x_pdxspy.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735724004/img-8-960x_qlxpdm.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735724002/img-2-960x_kzmsek.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735724000/img-3-960x_sg30vu.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735723999/img-4-960x_kqhgsy.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735723999/img-5-960x_knghgm.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735723996/img-11-960x_rrf0to.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735723995/img-10-960x_jnvxmt.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735723995/img-16-960x_awoinl.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735723995/img-13-960x_csoxel.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735723995/img-14-960x_n9x3rb.jpg"
]
ford_f150_photos.each do |url|
  ford_f150.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment

toyota_tacoma = Car.create!(
  category: "Pickup",
  make: "Toyota",
  model: "Tacoma",
  year: 2021,
  price: 24035.00,
  engine_type: "V6",
  fuel_type: "Petrol",
  engine_size: 3500,
  seats: 5,
  doors: 4,
  transmission: "Automatic",
  drivetrain: "Four-wheel drive",
  registration_year: "2023/9",
  dimension: "5.39×1.91×1.80 m",
  chassis_no: "31,983",
  engine_code: "2GR-FKS",
  steering: "Left",
  ext_color: "Midnight Black Metallic",
  location: "USA",
  weight: 1950,
  version_class: "TRD Off-Road",
  max_capacity: "750 kg",
  description: "The Toyota Tacoma is engineered for rugged off-road adventures and dependable performance.",
  condition: "Used",
  availability: true
)

toyota_tacoma_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735724406/img-1-960x_1_sqojnc.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735724402/img-2-960x_1_ko4mwu.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735724401/img-3-960x_1_pf2d2s.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735724400/img-4-960x_1_lczcbn.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735724399/img-6-960x_ifghno.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735724398/img-7-960x_nmptam.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735724396/img-8-960x_1_rrmvvv.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735724395/img-16-960x_1_u5nqin.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735724393/img-18-960x_d4ob8n.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735724392/img-19-960x_opozw2.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735724392/img-26-960x_uivlug.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735724392/img-24-960x_on9yes.jpg"
]
toyota_tacoma_photos.each do |url|
  toyota_tacoma.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment


gmc_yukon_xl = Car.create!(
  category: "SUV",
  make: "GMC",
  model: "Yukon XL",
  year: 2019,
  price: 29995.00,
  engine_type: "V8",
  fuel_type: "Petrol",
  engine_size: 6200,
  seats: 8,
  doors: 5,
  transmission: "Automatic",
  drivetrain: "Four-wheel drive",
  registration_year: "2023/2",
  dimension: "5.72×2.05×1.93 m",
  chassis_no: "103,256",
  engine_code: "L87",
  steering: "Left",
  ext_color: "Smokey Quartz Metallic",
  location: "USA",
  weight: 2500,
  version_class: "Denali",
  max_capacity: "800 kg",
  description: "The GMC Yukon XL is a full-size SUV with premium features and room for the whole family.",
  condition: "Used",
  availability: true
)

gmc_yukon_xl_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735724874/img-2-960x_umm7wr.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735724871/img-7-960x_1_djcgaz.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735724902/img-4-960x_qfi1qs.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735724903/img-5-960x_unzgpp.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735724902/img-3-960x_ygxagh.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735724870/img-9-960x_fv1l4a.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735724849/img-11-960x_a5pufe.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735724848/img-12-960x_udhtoy.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735724845/img-15-960x_reza6z.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735724840/img-31-960x_ked4nv.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735724834/img-37-960x_revkri.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735724833/img-58-960x_a5fcae.avif"
]
gmc_yukon_xl_photos.each do |url|
  gmc_yukon_xl.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment

dodge_charger = Car.create!(
  category: "Sedan",
  make: "Dodge",
  model: "Charger R/T",
  year: 2022,
  price: 30995.00,
  engine_type: "V8 HEMI",
  fuel_type: "Petrol",
  engine_size: 5700,
  seats: 5,
  doors: 4,
  transmission: "Automatic",
  drivetrain: "Rear-wheel drive",
  registration_year: "2023/8",
  dimension: "5.10×1.91×1.48 m",
  chassis_no: "21,162",
  engine_code: "HEMI",
  steering: "Left",
  ext_color: "F8 Green",
  location: "USA",
  weight: 1960,
  version_class: "R/T Scat Pack",
  max_capacity: "500 kg",
  description: "The Dodge Charger R/T delivers raw power with a V8 HEMI engine and bold design for thrill-seekers.",
  condition: "New",
  availability: true
)

dodge_charger_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735725162/img-2-960x_2_fqaqkp.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735725160/img-3-960x_2_iunczk.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735725158/img-4-960x_2_l4lc6n.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735725158/img-5-960x_1_popnrp.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735725156/img-6-960x_2_whckpt.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735725155/img-7-960x_2_jle71t.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735725152/img-8-960x_2_fko3bv.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735725150/img-9-960x_ahytzf.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735725149/img-10-960x_2_vxqoqx.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735725114/img-11-960x_1_dpdyux.jpg"
]
dodge_charger_photos.each do |url|
  dodge_charger.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment

jeep_grand_cherokee = Car.create!(
  category: "SUV",
  make: "Jeep",
  model: "Grand Cherokee",
  year: 2023,
  price: 23895.00,
  engine_type: "V6",
  fuel_type: "Petrol",
  engine_size: 3600,
  seats: 5,
  doors: 5,
  transmission: "Automatic",
  drivetrain: "Four-wheel drive",
  registration_year: "2023/3",
  dimension: "4.91×1.94×1.80 m",
  chassis_no: "11,456",
  engine_code: "Pentastar",
  steering: "Left",
  ext_color: "Midnight Sky",
  location: "USA",
  weight: 2100,
  version_class: "Overland",
  max_capacity: "700 kg",
  description: "The Jeep Grand Cherokee combines luxury and off-road capability for versatile adventures.",
  condition: "New",
  availability: true
)

jeep_grand_cherokee_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735725560/img-7-960x_everhf.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735725562/img-2-960x_1_ryd67n.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735725563/img-3-960x_1_hslsur.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735725559/img-8-960x_fwjosu.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735725558/img-9-960x_jouui0.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735725557/img-11-960x_moqip1.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735725555/img-13-960x_xmhoks.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735725551/img-20-960x_zi8mha.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735725550/img-21-960x_m9untf.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735725546/img-23-960x_dbvcgl.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735725544/img-24-960x_bebm9b.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735725544/img-25-960x_kjow0w.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735725543/img-29-960x_wetrtz.jpg"
]
jeep_grand_cherokee_photos.each do |url|
  jeep_grand_cherokee.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment

chevrolet_tahoe = Car.create!(
  category: "SUV",
  make: "Chevrolet",
  model: "Tahoe",
  year: 2022,
  price: 34595.00,
  engine_type: "V8",
  fuel_type: "Petrol",
  engine_size: 5300,
  seats: 8,
  doors: 5,
  transmission: "Automatic",
  drivetrain: "Four-wheel drive",
  registration_year: "2023/1",
  dimension: "5.35×2.06×1.92 m",
  chassis_no: "81,000",
  engine_code: "EcoTec3",
  steering: "Left",
  ext_color: "Black",
  location: "USA",
  weight: 2550,
  version_class: "Premier",
  max_capacity: "850 kg",
  description: "The Chevrolet Tahoe offers premium comfort, advanced technology, and impressive towing capacity.",
  condition: "Used",
  availability: true
)

chevrolet_tahoe_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735725955/img-3-960x_uurzry.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735725954/img-2-960x_exwrwx.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735725952/img-4-960x_dm6sis.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735725951/img-8-960x_jcpk4h.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735725949/img-9-960x_pddinj.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735725948/img-10-960x_gahsce.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735725946/img-12-960x_vyaoeg.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735725945/img-13-960x_qmki1x.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735725943/img-14-960x_prjzxr.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735725942/img-15-960x_jqfpxr.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735725940/img-16-960x_utixdy.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735725940/img-20-960x_qnu3qs.avif"
]
chevrolet_tahoe_photos.each do |url|
  chevrolet_tahoe.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment


ford_explorer = Car.create!(
  category: "SUV",
  make: "Ford",
  model: "Explorer",
  year: 2018,
  price: 36995.00,
  engine_type: "Inline-4 Turbocharged",
  fuel_type: "Petrol",
  engine_size: 2300,
  seats: 7,
  doors: 5,
  transmission: "Automatic",
  drivetrain: "Four-wheel drive",
  registration_year: "2023/5",
  dimension: "5.05×2.00×1.80 m",
  chassis_no: "99,454",
  engine_code: "EcoBoost",
  steering: "Left",
  ext_color: "Shadow Black",
  location: "USA",
  weight: 2100,
  version_class: "XLT",
  max_capacity: "800 kg",
  description: "The Ford Explorer is a family-friendly SUV with powerful performance and advanced safety features.",
  condition: "Used",
  availability: true
)

ford_explorer_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735726886/img-1-960x_1_me0elx.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735726885/img-2-960x_vx6qjq.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735726883/img-3-960x_g7adpy.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735726882/img-5-960x_jqd9yr.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735726880/img-6-960x_hipw1e.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735726879/img-7-960x_me8cml.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735726877/img-8-960x_qpdk3w.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735726875/img-10-960x_ksazsp.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735726857/img-14-960x_x7rejz.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735726856/img-21-960x_y6rokw.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735726836/img-27-960x_rkczmq.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735726833/img-30-960x_scc9ah.avif"
]
ford_explorer_photos.each do |url|
  ford_explorer.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment

ram_1500 = Car.create!(
  category: "Pickup",
  make: "Ram",
  model: "1500",
  year: 2023,
  price: 20995.00,
  engine_type: "V8",
  fuel_type: "Petrol",
  engine_size: 5700,
  seats: 6,
  doors: 4,
  transmission: "Automatic",
  drivetrain: "Four-wheel drive",
  registration_year: "2023/10",
  dimension: "5.93×2.08×1.96 m",
  chassis_no: "83,001",
  engine_code: "HEMI",
  steering: "Left",
  ext_color: "Delmonico Red Pearl Coat",
  location: "USA",
  weight: 2350,
  version_class: "Laramie",
  max_capacity: "1050 kg",
  description: "The Ram 1500 redefines the pickup truck experience with luxury interiors and powerful towing capabilities.",
  condition: "Used",
  availability: true
)

ram_1500_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735728108/img-2-960x_1_yjirw1.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735728097/img-9-960x_kk0sch.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735728096/img-10-960x_1_wd1cgu.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735728094/img-13-960x_ioui9k.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735728093/img-14-960x_dqkasz.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735728091/img-21-960x_vqpchr.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735728090/img-23-960x_ai96ka.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735728100/img-8-960x_vlwh4g.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735728106/img-3-960x_1_gc4onu.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735728104/img-5-960x_1_opuzq3.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735728103/img-6-960x_1_yulsl1.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735728101/img-7-960x_1_vgrexf.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735728089/img-24-960x_yh6jbx.avif"
]
ram_1500_photos.each do |url|
  ram_1500.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment


chevy_silverado = Car.create!(
  category: "Pickup",
  make: "Chevrolet",
  model: "Silverado 1500 LTZ",
  year: 2021,
  price: 24995.00,
  engine_type: "V8",
  fuel_type: "Petrol",
  engine_size: 5300,
  seats: 5,
  doors: 4,
  transmission: "Automatic",
  drivetrain: "Four-wheel drive",
  registration_year: "2023/6",
  dimension: "5.89×2.06×1.97 m",
  chassis_no: "2,832",
  engine_code: "EcoTec3",
  steering: "Left",
  ext_color: "Red Host",
  location: "USA",
  weight: 2500,
  version_class: "LTZ",
  max_capacity: "900 kg",
  description: "The Chevrolet Silverado 1500 LTZ blends rugged utility with modern comfort and advanced safety features.",
  condition: "Used",
  availability: true
)

chevy_silverado_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735728573/img-3-960x_1_tlkh9d.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735728571/img-4-960x_w1dyyd.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735728569/img-5-960x_a3rwep.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735728566/img-6-960x_rvkgcx.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735728561/img-7-960x_ibybls.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735728560/img-8-960x_1_stnd1d.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735728543/img-9-960x_dthri1.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735728533/img-13-960x_1_bjpqjf.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735728532/img-15-960x_iuhqir.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735728532/img-18-960x_mtwxha.jpg"
]
chevy_silverado_photos.each do |url|
  chevy_silverado.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment

ford_mustang = Car.create!(
  category: "Coupe",
  make: "Ford",
  model: "Mustang GT",
  year: 2019,
  price: 20995.00,
  engine_type: "V8",
  fuel_type: "Petrol",
  engine_size: 5000,
  seats: 4,
  doors: 2,
  transmission: "Manual",
  drivetrain: "Rear-wheel drive",
  registration_year: "2023/4",
  dimension: "4.79×1.92×1.38 m",
  chassis_no: "67,487",
  engine_code: "Coyote",
  steering: "Left",
  ext_color: "Red",
  location: "USA",
  weight: 1680,
  version_class: "GT",
  max_capacity: "350 kg",
  description: "The Ford Mustang GT delivers classic American muscle car performance and an iconic design.",
  condition: "Used",
  availability: true
)

ford_mustang_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735728933/img-1-960x_e4qd6h.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735728931/img-2-960x_1_sh9tvj.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735728928/img-3-960x_2_tujbmg.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735728927/img-4-960x_ph7dos.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735728925/img-5-960x_2_o6uspx.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735728923/img-6-960x_1_kutxzw.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735728922/img-7-960x_2_xqk5jq.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735728920/img-8-960x_2_siuhzs.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735728918/img-9-960x_iekhvc.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735728918/img-10-960x_2_aknbpq.avif"
]
ford_mustang_photos.each do |url|
  ford_mustang.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment


gmc_yukon = Car.create!(
  category: "SUV",
  make: "GMC",
  model: "Yukon Denali",
  year: 2023,
  price: 72995.00,
  engine_type: "V8",
  fuel_type: "Petrol",
  engine_size: 6200,
  seats: 7,
  doors: 5,
  transmission: "Automatic",
  drivetrain: "Four-wheel drive",
  registration_year: "2023/9",
  dimension: "5.71×2.06×1.95 m",
  chassis_no: "51,000",
  engine_code: "EcoTec3 V8",
  steering: "Left",
  ext_color: "White",
  location: "USA",
  weight: 2600,
  version_class: "Denali",
  max_capacity: "900 kg",
  description: "The GMC Yukon Denali offers refined luxury, impressive performance, and advanced features for families.",
  condition: "Used",
  availability: true
)

gmc_yukon_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735733731/img-3-960x_3_b7pire.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735733730/img-2-960x_2_qbkqle.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735733728/img-3-960x_4_cwv5ai.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735733726/img-4-960x_1_ww5w5a.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735733724/img-5-960x_1_sfrwmb.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735733723/img-6-960x_2_oi4bjl.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735733720/img-7-960x_zj3lpz.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735733719/img-8-960x_3_b5374e.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735733717/img-9-960x_1_fjnudu.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735733715/img-14-960x_1_oc7j4n.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735733713/img-20-960x_pv4jff.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735733712/img-25-960x_vnwu8x.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735733711/img-30-960x_dtorzg.jpg"
]
gmc_yukon_photos.each do |url|
  gmc_yukon.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment

toyota_camry = Car.create!(
  category: "Sedan",
  make: "Toyota",
  model: "Camry SE",
  year: 2014,
  price: 18995.00,
  engine_type: "Hybrid",
  fuel_type: "Petrol",
  engine_size: 2500,
  seats: 5,
  doors: 4,
  transmission: "Automatic",
  drivetrain: "Front-wheel drive",
  registration_year: "2019/3",
  dimension: "4.89×1.84×1.45 m",
  chassis_no: "149,359",
  engine_code: "A25A-FKS",
  steering: "Left",
  ext_color: "Creme Brulee Mica",
  location: "USA",
  weight: 1490,
  version_class: "SE",
  max_capacity: "500 kg",
  description: "The Toyota Camry SE offers a balance of performance, reliability, and style, making it a popular choice for families.",
  condition: "Used",
  availability: true
)

toyota_camry_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735734110/img-1-960x_2_fhomct.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735734106/img-2-960x_2_waoflo.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735734104/img-3-960x_2_qderse.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735734103/img-4-960x_2_r1m0mx.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735734102/img-5-960x_3_lj3vyo.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735734799/img-3-960x_3_yqzkei.avif"
]
toyota_camry_photos.each do |url|
  toyota_camry.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment


toyota_cam = Car.create!(
  category: "Sedan",
  make: "Toyota",
  model: "Camry SE",
  year: 2014,
  price: 8995.00,
  engine_type: "Hybrid",
  fuel_type: "Petrol",
  engine_size: 2500,
  seats: 5,
  doors: 4,
  transmission: "Automatic",
  drivetrain: "Front-wheel drive",
  registration_year: "2019/3",
  dimension: "4.89×1.84×1.45 m",
  chassis_no: "85,436",
  engine_code: "A25A-FKS",
  steering: "Left",
  ext_color: "Magnetic Gray Metallic",
  location: "USA",
  weight: 1490,
  version_class: "SE",
  max_capacity: "500 kg",
  description: "Toyota Camry Hybrid SE Limited Edition 4dr Sedan (2.5L 4cyl gas/electric hybrid CVT)",
  condition: "Used",
  availability: true
)

toyota_cam_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735734799/img-3-960x_3_yqzkei.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735734797/img-1-960x_3_ipsn6j.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735734796/img-5-960x_4_ugkjlz.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735734793/img-7-960x_1_i0cfi0.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735734792/img-8-960x_1_ut0lnd.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735734790/img-10-960x_3_tayckg.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735734784/img-22-960x_a6nlrr.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735734780/img-26-960x_cfwpr5.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735734779/img-27-960x_1_cmrnee.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735734788/img-17-960x_krr2dt.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735734786/img-18-960x_fjs5jv.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735734778/img-29-960x_hwsef7.avif"
]
toyota_cam_photos.each do |url|
  toyota_cam.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment


chevy_malibu = Car.create!(
  category: "Sedan",
  make: "Chevrolet",
  model: "Malibu LT",
  year: 2022,
  price: 15995.00,
  engine_type: "Inline-4 Turbocharged",
  fuel_type: "Petrol",
  engine_size: 1500,
  seats: 5,
  doors: 4,
  transmission: "Automatic",
  drivetrain: "Front-wheel drive",
  registration_year: "2020/9",
  dimension: "4.93×1.85×1.46 m",
  chassis_no: "51,108",
  engine_code: "LFV",
  steering: "Left",
  ext_color: "Dark Ash Metallic",
  location: "USA",
  weight: 1420,
  version_class: "LT",
  max_capacity: "450 kg",
  description: "The Chevrolet Malibu LT is a sleek, modern sedan with advanced features and excellent fuel economy.",
  condition: "Used",
  availability: true
)

chevy_malibu_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735738641/img-4-960x_2_oldvle.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735738642/img-3-960x_5_brkuqe.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735738639/img-5-960x_2_lbokj7.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735738636/img-6-960x_3_buqbyh.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735738634/img-9-960x_1_xd6pxg.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735738632/img-10-960x_4_fcfxkp.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735738629/img-11-960x_im7vrj.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735738627/img-12-960x_cszjj0.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735738625/img-16-960x_1_pgclqi.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735738622/img-22-960x_1_wsfunn.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735738621/img-36-960x_wnlcje.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735738621/img-29-960x_1_mr3kcj.avif"
]
chevy_malibu_photos.each do |url|
  chevy_malibu.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment

jeep_grand_cherokee = Car.create!(
  category: "SUV",
  make: "Jeep",
  model: "Grand Cherokee Limited",
  year: 2018,
  price: 13995.00,
  engine_type: "V6",
  fuel_type: "Petrol",
  engine_size: 3600,
  seats: 5,
  doors: 5,
  transmission: "Automatic",
  drivetrain: "Four-wheel drive",
  registration_year: "2016/8",
  dimension: "4.82×1.94×1.76 m",
  chassis_no: "94,479",
  engine_code: "Pentastar V6",
  steering: "Left",
  ext_color: "Diamond Black Crystal Pearl Coa",
  location: "USA",
  weight: 2025,
  version_class: "Limited",
  max_capacity: "650 kg",
  description: "The Jeep Grand Cherokee Limited is a premium SUV offering a combination of luxury, off-road capability, and reliability.",
  condition: "Used",
  availability: true
)

jeep_grand_cherokee_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735739203/img-2-960x_5_liplqg.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735739201/img-3-960x_6_feoe3u.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735739198/img-4-960x_3_gqqprf.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735739119/img-5-960x_3_fy1uqu.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735739115/img-6-960x_3_lcbauc.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735739109/img-7-960x_4_asyayv.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735739107/img-8-960x_4_oxbpx8.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735739105/img-9-960x_2_eejscq.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735739103/img-11-960x_1_qklj6r.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735739086/img-15-960x_2_waey7m.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735739081/img-22-960x_accdqc.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735739076/img-32-960x_nopm4r.avif"
]
jeep_grand_cherokee_photos.each do |url|
  jeep_grand_cherokee.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment

nissan_altima = Car.create!(
  category: "Sedan",
  make: "Nissan",
  model: "Altima SL",
  year: 2015,
  price: 15995.00,
  engine_type: "Inline-4",
  fuel_type: "Petrol",
  engine_size: 2500,
  seats: 5,
  doors: 4,
  transmission: "CVT",
  drivetrain: "Front-wheel drive",
  registration_year: "2015/3",
  dimension: "4.87×1.83×1.47 m",
  chassis_no: "27,263",
  engine_code: "QR25DE",
  steering: "Left",
  ext_color: "Brilliant Silver Metallic",
  location: "USA",
  weight: 1440,
  version_class: "SL",
  max_capacity: "450 kg",
  description: "The Nissan Altima SL is a dependable and fuel-efficient sedan with premium interior features.",
  condition: "Used",
  availability: true
)

nissan_altima_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735740862/img-4-960x_3_mfitut.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735740865/img-3-960x_5_wnkv76.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735740857/img-5-960x_4_xeqcz0.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735740856/img-6-960x_4_fwyj4g.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735739695/img-7-960x_2_x3qcmu.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735739693/img-8-960x_5_y31lsa.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735739691/img-9-960x_2_n0xr0r.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735739681/img-10-960x_etiyg3.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735739675/img-15-960x_qv2rdg.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735739670/img-17-960x_eph5bo.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735739665/img-18-960x_1_fmrzyo.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735739654/img-20-960x_1_ly8nxe.jpg"
]
nissan_altima_photos.each do |url|
  nissan_altima.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment

subaru_outback = Car.create!(
  category: "SUV",
  make: "Subaru",
  model: "Outback 2.5i Limited",
  year: 2020,
  price: 18995.00,
  engine_type: "Flat-4",
  fuel_type: "Petrol",
  engine_size: 2500,
  seats: 5,
  doors: 5,
  transmission: "CVT",
  drivetrain: "All-wheel drive",
  registration_year: "2017/4",
  dimension: "4.82×1.84×1.68 m",
  chassis_no: "50,103",
  engine_code: "FB25",
  steering: "Left",
  ext_color: "Slate black leather",
  location: "USA",
  weight: 1600,
  version_class: "2.5i Limited",
  max_capacity: "550 kg",
  description: "The Subaru Outback 2.5i Limited is perfect for outdoor enthusiasts, offering AWD capability and advanced safety features.",
  condition: "Used",
  availability: true
)

subaru_outback_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735758081/img-1-960x_4_dgechj.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735758082/img-7-960x_3_mqcplg.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735758082/img-3-960x_7_vjwq8x.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735758082/img-2-960x_3_tfswba.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735758081/img-5-960x_5_ivjrwi.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735758081/img-4-960x_4_cdfgvk.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735758081/img-6-960x_4_camltl.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735758081/img-10-960x_u5lwjx.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735758081/img-8-960x_2_jpq457.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735758081/img-13-960x_m1rvds.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735758080/img-24-960x_2_tpz15z.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735758080/img-15-960x_b8agfr.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735758080/img-12-960x_pvbj0z.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735758080/img-17-960x_1_zpeab7.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735758080/img-14-960x_2_fpkb4n.avif"
]
subaru_outback_photos.each do |url|
  subaru_outback.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment

bmw_328i = Car.create!(
  category: "Sedan",
  make: "BMW",
  model: "328i xDrive",
  year: 2013,
  price: 6995.00,
  engine_type: "Inline-4 Turbocharged",
  fuel_type: "Petrol",
  engine_size: 2000,
  seats: 5,
  doors: 4,
  transmission: "Automatic",
  drivetrain: "All-wheel drive",
  registration_year: "2014/8",
  dimension: "4.62×1.81×1.42 m",
  chassis_no: "109,914",
  engine_code: "N20",
  steering: "Left",
  ext_color: "Metallic black",
  location: "USA",
  weight: 1500,
  version_class: "328i xDrive",
  max_capacity: "450 kg",
  description: "The BMW 328i xDrive delivers luxury, performance, and handling in an all-weather capable sedan.",
  condition: "Used",
  availability: true
)

bmw_328i_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735758680/img-1-960x_5_utxxxu.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735758680/img-3-960x_8_d3axpu.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735758680/img-8-960x_3_drhkos.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735758679/img-10-960x_1_yugfhy.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735758680/img-5-960x_6_l8wmse.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735758679/img-12-960x_1_o869qx.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735758679/img-25-960x_1_sdmfa7.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735758679/img-21-960x_1_pmb0dp.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735758679/img-30-960x_1_n3q1rk.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735758678/img-93-960x_wcblwn.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735758678/img-40-960x_hgfpnr.avif"
]
bmw_328i_photos.each do |url|
  bmw_328i.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment

hyundai_tucson = Car.create!(
  category: "SUV",
  make: "Hyundai",
  model: "Tucson SEL",
  year: 2022,
  price: 18995.00,
  engine_type: "Inline-4",
  fuel_type: "Petrol",
  engine_size: 2000,
  seats: 5,
  doors: 5,
  transmission: "Automatic",
  drivetrain: "Front-wheel drive",
  registration_year: "2016/5",
  dimension: "4.48×1.85×1.65 m",
  chassis_no: "36,267",
  engine_code: "NU2.0",
  steering: "Left",
  ext_color: "Phantom Black",
  location: "USA",
  weight: 1490,
  version_class: "SEL",
  max_capacity: "500 kg",
  description: "The Hyundai Tucson SEL is a stylish compact SUV offering modern features and reliability for urban driving.",
  condition: "Used",
  availability: true
)

hyundai_tucson_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735759043/img-3-960x_6_dtbk4s.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735759944/img-4-960x_5_maaoy8.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735759042/img-6-960x_5_ef56bx.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735759043/img-5-960x_6_gmtol5.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735759042/img-7-960x_4_x0kr6r.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735759041/img-8-960x_6_e4xcnt.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735759002/img-15-960x_1_zzd7ek.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735759003/img-14-960x_2_a3anyy.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735759005/img-10-960x_2_xanvmm.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735759002/img-17-960x_2_bvmt6r.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735759002/img-18-960x_2_ckt1vt.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735759001/img-22-960x_1_gakzwu.jpg"
]
hyundai_tucson_photos.each do |url|
  hyundai_tucson.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment

kia_soul = Car.create!(
  category: "Crossover",
  make: "Kia",
  model: "Soul Plus",
  year: 2019,
  price: 11995.00,
  engine_type: "Inline-4",
  fuel_type: "Petrol",
  engine_size: 2000,
  seats: 5,
  doors: 5,
  transmission: "Automatic",
  drivetrain: "Front-wheel drive",
  registration_year: "2018/6",
  dimension: "4.19×1.80×1.60 m",
  chassis_no: "68,935",
  engine_code: "Nu MPI",
  steering: "Left",
  ext_color: "Inferno Red",
  location: "USA",
  weight: 1320,
  version_class: "Plus",
  max_capacity: "450 kg",
  description: "The Kia Soul Plus is a versatile and fun compact crossover, perfect for urban adventures and everyday use.",
  condition: "Used",
  availability: true
)

kia_soul_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735760363/img-3-960x_7_rspgwv.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735760366/img-2-960x_4_bob7xp.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735760363/img-4-960x_6_klumft.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735760362/img-5-960x_7_qobvuf.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735760359/img-6-960x_6_tcgr19.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735760359/img-7-960x_5_htlezk.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735760358/img-9-960x_3_v7en6y.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735760358/img-8-960x_7_kli84u.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735760356/img-10-960x_3_ytyasm.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735760355/img-11-960x_qahlwv.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735760355/img-17-960x_3_kczadg.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735760354/img-21-960x_2_zb5gzf.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735760322/img-26-960x_sjiy8a.jpg"
]
kia_soul_photos.each do |url|
  kia_soul.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment

toyota_camry = Car.create!(
  category: "Sedan",
  make: "Toyota",
  model: "Camry SE",
  year: 2022,
  price: 16995.00,
  engine_type: "Inline-4",
  fuel_type: "Petrol",
  engine_size: 2500,
  seats: 5,
  doors: 4,
  transmission: "Automatic",
  drivetrain: "Front-wheel drive",
  registration_year: "2013/2",
  dimension: "4.82×1.82×1.48 m",
  chassis_no: "48,387",
  engine_code: "2AR-FE",
  steering: "Left",
  ext_color: "Supersonic Red",
  location: "USA",
  weight: 1470,
  version_class: "SE",
  max_capacity: "450 kg",
  description: "The Toyota Camry SE is known for its reliability, fuel efficiency, and comfortable ride, making it a popular choice for families.",
  condition: "Used",
  availability: true
)

toyota_camry_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735761509/img-3-960x_9_zuvhl9.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735761507/img-4-960x_4_nglvz0.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735761506/img-8-960x_4_rzrmev.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735761508/img-2-960x_6_pew0g5.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735761505/img-12-960x_2_wq3ulz.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735761505/img-13-960x_a7jgkm.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735761503/img-17-960x_1_ll9drj.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735761501/img-22-960x_cby1be.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735761501/img-31-960x_po4ntm.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735761500/img-35-960x_bsreei.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735761500/img-32-960x_1_g48zlv.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735761500/img-52-960x_elfaqt.avif"
]
toyota_camry_photos.each do |url|
  toyota_camry.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment

ford_escape = Car.create!(
  category: "SUV",
  make: "Ford",
  model: "Escape Titanium",
  year: 2020,
  price: 15995.00,
  engine_type: "Inline-4 Turbocharged",
  fuel_type: "Petrol",
  engine_size: 2000,
  seats: 5,
  doors: 5,
  transmission: "Automatic",
  drivetrain: "All-wheel drive",
  registration_year: "2016/3",
  dimension: "4.52×1.83×1.68 m",
  chassis_no: "11,969",
  engine_code: "EcoBoost",
  steering: "Left",
  ext_color: "Rapid Red Metallic Tinted Clearcoat",
  location: "USA",
  weight: 1570,
  version_class: "Titanium",
  max_capacity: "500 kg",
  description: "The Ford Escape Titanium offers a comfortable and tech-friendly ride with AWD capability for various terrains.",
  condition: "Used",
  availability: true
)

ford_escape_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735761838/img-4-960x_7_h6rn66.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735761839/img-3-960x_10_y6ipf4.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735761840/img-5-960x_7_dd1ycm.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735761836/img-6-960x_1_cijztv.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735761836/img-8-960x_5_h0ir9g.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735761835/img-9-960x_4_xvd1zc.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735761834/img-10-960x_4_ktad40.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735761833/img-11-960x_uocygk.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735761832/img-13-960x_1_phmkli.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735761828/img-23-960x_yu9srr.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735761830/img-17-960x_xprtbu.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735761829/img-22-960x_2_mkqpcr.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735761829/img-20-960x_2_l5vx22.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735761828/img-25-960x_l476fz.webp"
]
ford_escape_photos.each do |url|
  ford_escape.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment

chevy_malibu = Car.create!(
  category: "Sedan",
  make: "Chevrolet",
  model: "Malibu LT",
  year: 2022,
  price: 11995.00,
  engine_type: "Inline-4 Turbocharged",
  fuel_type: "Petrol",
  engine_size: 1500,
  seats: 5,
  doors: 4,
  transmission: "Automatic",
  drivetrain: "Front-wheel drive",
  registration_year: "2019/1",
  dimension: "4.92×1.85×1.46 m",
  chassis_no: "51,108",
  engine_code: "LXV",
  steering: "Left",
  ext_color: "Dark Ash Metallic",
  location: "USA",
  weight: 1470,
  version_class: "LT",
  max_capacity: "450 kg",
  description: "The Chevrolet Malibu LT combines sleek design and advanced technology, delivering a smooth and efficient drive.",
  condition: "Used",
  availability: true
)

chevy_malibu_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735762151/img-4-960x_5_tbbhpa.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735762147/img-10-960x_5_jdndnr.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735762154/img-3-960x_11_pqlnjm.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735762150/img-5-960x_8_qeukpd.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735762148/img-9-960x_5_nyxbdt.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735762150/img-6-960x_5_ocsj7p.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735762146/img-11-960x_2_kg9hdd.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735762145/img-14-960x_3_vsjbsi.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735762144/img-16-960x_2_jxch2p.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735762142/img-19-960x_dyptxy.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735762141/img-29-960x_2_bveju1.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735762141/img-22-960x_3_raqh9v.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735762140/img-30-960x_1_e2rxzh.avif"
]
chevy_malibu_photos.each do |url|
  chevy_malibu.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment


honda_accord = Car.create!(
  category: "Sedan",
  make: "Honda",
  model: "Accord Sport",
  year: 2016,
  price: 8995.00,
  engine_type: "Inline-4 Turbocharged",
  fuel_type: "Petrol",
  engine_size: 1500,
  seats: 5,
  doors: 4,
  transmission: "CVT",
  drivetrain: "Front-wheel drive",
  registration_year: "2018/5",
  dimension: "4.89×1.86×1.46 m",
  chassis_no: "116,981",
  engine_code: "L15B7",
  steering: "Left",
  ext_color: "San Mario red",
  location: "USA",
  weight: 1500,
  version_class: "Sport",
  max_capacity: "450 kg",
  description: "The Honda Accord Sport delivers a dynamic driving experience with modern styling and advanced safety features.",
  condition: "Used",
  availability: true
)

honda_accord_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735762595/img-1-960x_k9sbrd.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735762594/img-2-960x_8_epqcod.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735762593/img-3-960x_12_ecdujr.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735762592/img-4-960x_6_ao2ns0.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735762591/img-5-960x_8_b5bobg.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735762563/img-6-960x_2_pxyozd.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735762549/img-7-960x_6_j60xz4.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735762548/img-8-960x_6_ztljzx.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735762547/img-9-960x_4_rcuzjv.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735762545/img-11-960x_1_z5tdth.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735762545/img-10-960x_6_rimskg.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735762544/img-14-960x_3_rxlqvz.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735762544/img-37-960x_tpukq3.webp"
]
honda_accord_photos.each do |url|
  honda_accord.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment


jeep_grand_cherokee = Car.create!(
  category: "SUV",
  make: "Jeep",
  model: "Grand Cherokee L",
  year: 2023,
  price: 20995.00,
  engine_type: "V6",
  fuel_type: "Petrol",
  engine_size: 3600,
  seats: 5,
  doors: 5,
  transmission: "Automatic",
  drivetrain: "Four-wheel drive",
  registration_year: "2014/6",
  dimension: "4.82×1.94×1.76 m",
  chassis_no: "49,472",
  engine_code: "Pentastar",
  steering: "Left",
  ext_color: "Diamond Black Crystal Pearl Coat",
  location: "USA",
  weight: 2020,
  version_class: "Limited",
  max_capacity: "500 kg",
  description: "The Jeep Grand Cherokee Limited offers rugged performance, luxury, and advanced off-road capabilities.",
  condition: "Used",
  availability: true
)

jeep_grand_cherokee_photos = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735762915/img-4-960x_7_xj3xg4.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735762915/img-2-960x_9_ute7sa.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735762913/img-5-960x_9_uxwzct.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735762908/img-13-960x_2_ugyi4i.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735762907/img-15-960x_1_lr7avs.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735762906/img-21-960x_3_u75b5m.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735762907/img-20-960x_3_c3bvlx.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735762911/img-11-960x_3_t4u9g2.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735762912/img-7-960x_7_rvztru.avif"
]
jeep_grand_cherokee_photos.each do |url|
  jeep_grand_cherokee.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
progressbar.increment
