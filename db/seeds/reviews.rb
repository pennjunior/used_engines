
review1 = Review.create!(
  title: "Toyota Camry 2020",
  content: "Toyota Camry 2020 is reliable and efficient. It offers great fuel economy and a smooth ride, making it the ideal family sedan.",
  rating: 5,
  name: "John Doe",
  review_date: "2023-01-01"
)
review1_url = "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735983109/as_xy7w23.jpg"
review1.photo.attach(io: URI.open(review1_url), filename: "toyota-camry-2020.jpg", content_type: "image/jpg")

# Review 2
review2 = Review.create!(
  title: "Honda Civic 2019",
  content: "Honda Civic 2019 is a compact car with excellent performance and a modern design. A great choice for anyone looking for a practical vehicle.",
  rating: 4,
  name: "Jane Smith",
  review_date: "2024-01-02"
)
review2_url = "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735983096/470806988_28893196300279128_5909763486840941156_n_l9hldv.jpg"
review2.photo.attach(io: URI.open(review2_url), filename: "honda-civic-2019.jpg", content_type: "image/jpg")

# Review 3
review3 = Review.create!(
  title: "Mustang GT",
  content: "Ford Mustang GT delivers exhilarating power and performance. It's a classic American muscle car that never goes out of style.",
  rating: 5,
  name: "Michael Johnson",
  review_date: "2021-01-03"
)
review3_url = "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735983096/471819608_3307208829421530_5290755897630585362_n_k5jgis.jpg"
review3.photo.attach(io: URI.open(review3_url), filename: "mustang-gt.jpg", content_type: "image/jpg")

# Review 4
review4 = Review.create!(
  title: "Chevrolet Corvette Stingray",
  content: "Chevrolet Corvette Stingray is a powerful sports car that combines high-performance with sleek, modern styling.",
  rating: 5,
  name: "Emily Davis",
  review_date: "2022-03-04"
)
review4_url = "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735983661/471666632_122163834260268052_2437962672992724548_n_ecmmko.jpg"
review4.photo.attach(io: URI.open(review4_url), filename: "chevrolet-corvette-stingray.jpg", content_type: "image/jpg")

# Review 5
review5 = Review.create!(
  title: "BMW M3 2010",
  content: "BMW M3 2010 is the ultimate performance sedan, offering sharp handling, a powerful engine, and an unmatched driving experience.",
  rating: 4,
  name: "David Miller",
  review_date: "2020-01-05"
)
review5_url = "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735983662/471512204_10163404727296015_8925477417253912107_n_nusmm5.jpg"
review5.photo.attach(io: URI.open(review5_url), filename: "bmw-m3-2010.jpg", content_type: "image/jpg")

# Review 6
review6 = Review.create!(
  title: "Nissan Altima 2011",
  content: "Nissan Altima 2011 is a solid sedan offering great value with impressive safety features and a comfortable ride.",
  rating: 4,
  name: "Sarah Wilson",
  review_date: "2021-01-06"
)
review6_url = "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735983662/472229633_9235782763110415_6570475645898413642_n_qgsb9d.jpg"
review6.photo.attach(io: URI.open(review6_url), filename: "nissan-altima-2011.jpg", content_type: "image/jpg")

# Review 7
review7 = Review.create!(
  title: "Mercedes-Benz A-Class",
  content: "Mercedes-Benz A-Class delivers luxury at a compact level. Smooth handling, great technology, and an elegant interior.",
  rating: 5,
  name: "James Lee",
  review_date: "2019-01-07"
)
review7_url = "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735983662/463268085_501705786191661_4257371059907788997_n_pwtexa.jpg"
review7.photo.attach(io: URI.open(review7_url), filename: "mercedes-benz-a-class.jpg", content_type: "image/jpg")

# Review 8
review8 = Review.create!(
  title: "Tesla Model S",
  content: "Tesla Model S is a game-changer in the electric car market, offering unparalleled performance and a futuristic driving experience.",
  rating: 5,
  name: "Olivia Brown",
  review_date: "2018-01-08"
)
review8_url = "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735983660/472090135_1269339117738911_844084095950430688_n_jetqg1.jpg"
review8.photo.attach(io: URI.open(review8_url), filename: "tesla-model-s.jpg", content_type: "image/jpg")

# Review 9
review9 = Review.create!(
  title: "Audi A6 2021",
  content: "Audi A6 2021 is a luxury sedan with a spacious interior, advanced technology, and smooth driving experience, perfect for daily commutes.",
  rating: 4,
  name: "Chris Martinez",
  review_date: "2013-04-09"
)
review9_url = "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735983662/469168442_914655214091769_8384308743880225827_n_rx5qli.jpg"
review9.photo.attach(io: URI.open(review9_url), filename: "audi-a6-2021.jpg", content_type: "image/jpg")

# Review 10
review10 = Review.create!(
  title: "Mazda CX-30 2023",
  content: "Mazda CX-30 2023 is a high-performance sports car with a perfect balance of power, handling, and style. A true icon of automotive engineering.",
  rating: 3,
  name: "Sophia Garcia",
  review_date: "2023-07-10"
)
review10_url = "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735984239/472023323_122147971226323485_2656812349153539580_n_mmmdmy.jpg"
review10.photo.attach(io: URI.open(review10_url), filename: "mazda-cx-30-2023.jpg", content_type: "image/jpg")

# Review 11
review11 = Review.create!(
  title: "Subaru Outback 2015",
  content: "Subaru Outback 2015 is an excellent choice for adventure enthusiasts. With its rugged design and AWD capabilities, it's ready for any terrain.",
  rating: 5,
  name: "Liam Thompson",
  review_date: "2019-09-21"
)
review11_url = "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735984238/462120323_850757143876310_516699261391625035_n_wnxsrl.jpg"
review11.photo.attach(io: URI.open(review11_url), filename: "subaru-outback-2015.jpg", content_type: "image/jpg")

# Review 12
review12 = Review.create!(
  title: "Jeep Wrangler Rubicon",
  content: "Jeep Wrangler Rubicon offers serious off-road capabilities and iconic styling. It's the ultimate vehicle for adventure lovers.",
  rating: 4,
  name: "Emma Walker",
  review_date: "2021-11-12"
)
review12_url = "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735984238/471250470_10235783542552049_7998355483639529826_n_i05x1g.jpg"
review12.photo.attach(io: URI.open(review12_url), filename: "jeep-wrangler-rubicon.jpg", content_type: "image/jpg")

# Review 13
review13 = Review.create!(
  title: "Toyota Camry",
  content: "Toyota Camry is a high-performance exotic car that delivers unparalleled speed and beauty. A true supercar for enthusiasts.",
  rating: 5,
  name: "Lucas Johnson",
  review_date: "2023-01-30"
)
review13_url = "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735984238/471798548_3733361100248151_6076903156195759234_n_otfqh2.jpg"
review13.photo.attach(io: URI.open(review13_url), filename: "toyota-camry.jpg", content_type: "image/jpg")

# Review 14
review14 = Review.create!(
  title: "Toyota Crown",
  content: "Toyota Crown offers a stylish, comfortable ride with advanced technology and safety features. A great compact SUV for daily use.",
  rating: 4,
  name: "Isabella Martinez",
  review_date: "2024-11-24"
)
review14_url = "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735984237/471668237_1154078382745173_3204311115658668561_n_v1otal.jpg"
review14.photo.attach(io: URI.open(review14_url), filename: "toyota-crown.jpg", content_type: "image/jpg")

# Review 15
review15 = Review.create!(
  title: "Mercedes Benz C-Class C180",
  content: "Mercedes Benz C-Class C180 is a powerful pickup truck that combines rugged performance with modern comfort. It's perfect for work and play.",
  rating: 5,
  name: "Ethan Williams",
  review_date: "2020-04-15"
)
review15_url = "https://res.cloudinary.com/drxr1eiwp/image/upload/v1735984237/benz_azz2ru.jpg"
review15.photo.attach(io: URI.open(review15_url), filename: "mercedes-benz-c-class-c180.jpg", content_type: "image/jpg")
puts "Created #{Review.count} new review"
