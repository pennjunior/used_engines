SitemapGenerator::Sitemap.default_host = "https://yourwebsite.com"

SitemapGenerator::Sitemap.create do
  add cars_path, priority: 0.9, changefreq: 'daily'
  add engines_path, priority: 0.8, changefreq: 'daily'

  Car.find_each do |car|
    add car_path(car), lastmod: car.updated_at
  end

  Engine.find_each do |engine|
    add engine_path(engine), lastmod: engine.updated_at
  end
end
