if Rails.env.development?
  Rails.application.config.middleware.insert_before(
    Rack::Runtime, Rack::Static,
    urls: ["/images", "/stylesheets", "/javascripts", "/packs"],
    root: Rails.root.join("public"),
    headers: { "Cache-Control" => "no-cache, must-revalidate"
  })
end
