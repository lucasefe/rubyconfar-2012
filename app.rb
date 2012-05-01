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

Cuba.use OmniAuth::Builder do
  provider :developer 
  provider :twitter, APP_CONFIG['twitter']['consumer_key'], APP_CONFIG['twitter']['consumer_secret']
end

Cuba.plugin Cuba::Render
Cuba.settings.store(:template_engine, "slim")
require "./models/user"

require "./lib/session_helper"
Cuba.plugin SessionHelper

# routes
require "./routes/session"

Cuba.define do

  on "auth/:provider/callback" do |provider|
    @user = User.create_from(provider, env['omniauth.auth'])
    authenticate(@user)
    res.redirect "/info"
  end

  on "info" do
    res.write view('info')
  end

  on 'signout' do
    logout(User)
    res.redirect "/"
  end

  on default do
    res.write view("home")
  end
end