# Boat Engines
boat1 = BoatEngine.create!(
  power: 150,
  engine_type: "Outboard",
  hull_material: "Aluminum",
  manufacturer: "Yamaha",
  year: 2022,
  price: 9000,
  condition: "New",
  description: "Yamaha F150 outboard engine, ideal for recreational and fishing boats."
)
boat1_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735448903/s-l1600_13_egu93e.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735448914/s-l1600_21_fhdfqj.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735448914/s-l1600_22_zaia7m.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735448905/s-l1600_20_wz4awd.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735448904/s-l1600_16_am9wpc.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735448904/s-l1600_17_celf10.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735448904/s-l1600_17_celf10.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735448904/s-l1600_18_pmfwok.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735448903/s-l1600_14_yrh5qh.webp"
]
# Attach boat1s to boat1
boat1_urls.each do |url|
  boat1.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Yamaha F150 Outboard Engine", price: boat1.price, description: boat1.description, engineable: boat1)

boat2 = BoatEngine.create!(
  power: 300,
  engine_type: "Inboard",
  hull_material: "Fiberglass",
  manufacturer: "Volvo Penta",
  year: 2020,
  price: 14000,
  condition: "Used",
  description: "Volvo Penta D4-300 diesel inboard engine, perfect for yachts and large vessels."
)
boat2_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735449563/s-l1600_24_vvq4gi.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735449563/s-l1600_25_p9g24c.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735449563/s-l1600_26_pqosxy.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735449564/s-l1600_28_uvgayt.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735449564/s-l1600_27_tcqeqp.webp"
]
# Attach boat2s to boat2
boat2_urls.each do |url|
  boat2.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Volvo Penta D4-300 Marine Engine", price: boat2.price, description: boat2.description, engineable: boat2)

boat3 = BoatEngine.create!(
  power: 115,
  engine_type: "FourStroke",
  hull_material: "Aluminum",
  manufacturer: "Mercury",
  year: 2023,
  price: 8500,
  condition: "New",
  description: "Mercury 115 Pro XS FourStroke engine, a reliable choice for small and medium boats."
)
boat3_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735450160/IMG_JJHUW98-1_naixgy.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735450161/IMG_JJHUW98-12_ulqwiw.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735450159/D63F1683-69E0-426A-AE0C-38C425190842_zyhslk.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735450160/CDD0CFC1-8E4F-4162-98FE-C2907939EEA5_rktzaa.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735450160/A78E3A90-2296-47E9-BFCB-400ADEDEC996_fgrln5.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735450160/E89B6800-95FC-42A6-B607-B5C2F28500E1_gzjsj0.jpg"
]
# Attach boat3s to boat3
boat3_urls.each do |url|
  boat3.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/webp"
  )
end
Engine.create!(title: "Mercury 115 Pro XS FourStroke Engine", price: boat3.price, description: boat3.description, engineable: boat3)


boat4 = BoatEngine.create!(
  power: 150,
  engine_type: "FourStroke",
  hull_material: "Aluminum",
  manufacturer: "Yamaha",
  year: 2019,
  price: 9500,
  condition: "Used",
  description: "Yamaha 150HP FourStroke engine offering great performance, reliability, and fuel efficiency."
)
boat4_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735476979/s-l1600_7_k0smf3.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735476979/s-l1600_8_kkpoob.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735476979/s-l1600_9_seyad9.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735476980/s-l1600_10_hrabyr.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735476979/s-l1600_4_f57wit.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735476979/s-l1600_6_epre3y.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735476979/s-l1600_3_fpoott.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735476979/s-l1600_1_ryka8e.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735476979/s-l1600_2_dz4r4f.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735476979/s-l1600_5_kdryh8.webp"
]
boat4_urls.each do |url|
  boat4.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
Engine.create!(title: "Yamaha 150HP Outboard Motor", price: boat4.price, description: boat4.description, engineable: boat1)

boat5 = BoatEngine.create!(
  power: 60,
  engine_type: "FourStroke",
  hull_material: "Aluminum",
  manufacturer: "Honda",
  year: 2022,
  price: 7600,
  condition: "New",
  description: "Honda BF60 Outboard Engine known for its quiet operation, reliability, and smooth power delivery."
)
boat5_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735477739/IMG202076483985_l914pw.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735477748/IMG_GFYS884-3_vca9ib.png",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735477749/IMG_GFYS884-1_phf8og.png",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735477750/IMG_GFYS884-2_plub7z.png"
]
boat5_urls.each do |url|
  boat5.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
Engine.create!(title: "Honda BF60 Outboard Engine", price: boat5.price, description: boat5.description, engineable: boat2)

boat6 = BoatEngine.create!(
  power: 115,
  engine_type: "FourStroke",
  hull_material: "Aluminum",
  manufacturer: "Mercury",
  year: 2023,
  price: 8500,
  condition: "New",
  description: "Mercury 115 Pro XS, a lightweight, high-performance engine perfect for fishing boats."
)
boat6_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735477975/s-l1600_19_rao6r2.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735477974/s-l1600_21_lsv2p2.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735477974/s-l1600_17_qfxc7z.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735477974/s-l1600_20_bglmiy.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735477974/s-l1600_18_hhcmlu.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735477972/s-l1600_13_dm3svc.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735477973/s-l1600_16_mosqnd.webp"
]
boat6_urls.each do |url|
  boat6.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
Engine.create!(title: "Mercury 115 Pro XS FourStroke", price: boat6.price, description: boat6.description, engineable: boat3)

boat7 = BoatEngine.create!(
  power: 90,
  engine_type: "FourStroke",
  hull_material: "Aluminum",
  manufacturer: "Yamaha",
  year: 2021,
  price: 7900,
  condition: "New",
  description: "Yamaha 90HP VMAX SHO engine offering excellent performance and smooth operation for smaller boats."
)
boat7_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735478427/2024-Yamaha-VF90LA-EU-Black-Studio-001-03_iii8gc.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735478427/2024-Yamaha-VF90LA-EU-Black-Studio-002-03_ngfjaq.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735478428/2024-Yamaha-VF90LA-EU-Black-Studio-003-03_gclb2b.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735478428/2024-Yamaha-VF90LA-EU-Black-Studio-004-03_ub2qnc.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735478428/2024-Yamaha-VF90LA-EU-Black-Studio-005-03_e0aze6.jpg"
]
boat7_urls.each do |url|
  boat7.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
Engine.create!(title: "Yamaha 90HP VMAX SHO", price: boat7.price, description: boat7.description, engineable: boat4)

boat8 = BoatEngine.create!(
  power: 250,
  engine_type: "FourStroke",
  hull_material: "Fiberglass",
  manufacturer: "Suzuki",
  year: 2020,
  price: 13500,
  condition: "Used",
  description: "Suzuki DF250AP, a powerful and versatile engine suitable for offshore applications."
)
boat8_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735478657/2b_jpg-101084-600x600_nvaemx.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735478656/2a_jpg-101083-600x600_uilenx.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735478656/2_png-101082-600x600_pqitch.png"
]
boat8_urls.each do |url|
  boat8.photos.attach(
    io: URI.open(url),
    filename: File.basename(URI.parse(url).path),
    content_type: "image/jpeg"
  )
end
Engine.create!(title: "Suzuki 250HP DF250AP", price: boat8.price, description: boat8.description, engineable: boat5)
puts "created #{BoatEngine.count} Boat engines"
