# encoding: utf-8
require './config/shotgun'

APP_CONFIG = YAML.load_file('config/settings.yml' )

Cuba.use Rack::MethodOverride
Cuba.use Rack::Session::Cookie, 
  key: "rubyconfar", 
  secret: "jhaksfgsdkgaskjfgskdfgsk"

Cuba.use Rack::Static,
  root: "public",
  urls: ["/javascripts", "/stylesheets", "/images"]

Cuba.plugin Cuba::Render
Cuba.settings.store(:template_engine, "slim")

require "./models/user"


# routes
require "./routes/session"

Cuba.define do

  on get, extension("css") do |file|
    res.headers["Cache-Control"] = "public, max-age=29030400" if req.query_string =~ /[0-9]{10}/
    res.headers["Content-Type"] = "text/css; charset=utf-8"
    res.write render("views/#{file}.sass")
  end

  on default do
    res.write view("home")
  end
end

# Cuba.use OmniAuth::Builder do
#   provider :developer, fields: [:uid, :nickname, :name ]
#   provider :twitter, APP_CONFIG['twitter']['consumer_key'], APP_CONFIG['twitter']['consumer_secret']
# end

# require "./lib/session_helper"
# Cuba.plugin SessionHelper

# on "auth/:provider/callback" do |provider|
#   @user = User.create_from(env['omniauth.auth'])
#   authenticate(@user)
#   res.redirect "/"
# end

# on 'signout' do
#   logout(User)
#   res.redirect "/"
# end