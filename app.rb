# encoding: utf-8
require './config/shotgun'

Cuba.use Rack::MethodOverride
Cuba.use Rack::Session::Cookie,
  key: "rubyconfar",
  secret: "jhaksfgsdkgaskjfgskdfgsk"

require "rack/protection"
Cuba.use Rack::Protection
Cuba.use Rack::Protection::RemoteReferrer

Cuba.use Rack::Static,
  root: "public",
  urls: ["/javascripts", "/images"]
Cuba.plugin Cuba::TextHelpers
Cuba.plugin Cuba::Render


require './lib/cuba-r18n'
Cuba.plugin Cuba::R18n

# ADMIN
require "./routes/public"
# require "./routes/admin"

require "./models/video"
require "./models/promotional_video"
require "./models/user"
require "./models/subscriber"
require "./models/proposal"

Cuba.define do

  on "stylesheets", extension("css") do |file|
    res.headers["Cache-Control"] = "public, max-age=29030400" if req.query_string =~ /[0-9]{10}/
    res.headers["Content-Type"] = "text/css; charset=utf-8"
    res.write render("views/stylesheets/#{file}.sass", {}, load_paths: SASS_LOAD_PATHS )
  end

  # on "admin" do
  #   run Admin
  # end

  on default do
    run Public
  end

end

