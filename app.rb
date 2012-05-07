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

require './lib/helper'
Cuba.plugin Helper

require 'cuba/contrib/text_helpers'
Cuba.plugin Cuba::TextHelpers
Cuba.plugin Cuba::Render
Cuba.plugin Cuba::Sugar
Cuba.settings.store(:template_engine, "slim")

require "./models/user"
require "./models/subscriber"

Cuba.define do

  helpers do
    # TODO: Implement
    def t(key, default = nil)
      default
    end

    def notify_new_subscriber(subscriber)
      Malone.deliver to: subscriber.email, 
        from: SETTINGS['default_email'], 
        subject: t('subscription.notification.subject', "[rubyconfar] We'll keep you posted!"),
        html: partial('subscribers/success')
    end
  end

  on "stylesheets", extension("css") do |file|
    res.headers["Cache-Control"] = "public, max-age=29030400" if req.query_string =~ /[0-9]{10}/
    res.headers["Content-Type"] = "text/css; charset=utf-8"
    res.write render("views/#{file}.sass", {}, load_paths: SASS_LOAD_PATHS )
  end

  on "(en|es)" do |locale|
    on "subscribers" do
      on post, param(:subscriber) do |subscriber|
        @subscriber = Subscriber.new(subscriber)
        if @subscriber.save
          notify_new_subscriber @subscriber
          res.write t('subscription.success', "<div id='party'><span></span>Ok. We'll keep you posted.</div>")

        else
          res.write partial("subscribers/form")
        end
      end

      on default do 
        res.redirect "/en"    
      end
    end

    on default do
      @subscriber = Subscriber.new
      res.write view("#{locale}/index")
    end

  end

  on default do
    res.redirect "/en"
  end
end

# Cuba.use OmniAuth::Builder do
#   provider :developer, fields: [:uid, :nickname, :name ]
#   provider :twitter, SETTINGS['twitter']['consumer_key'], SETTINGS['twitter']['consumer_secret']
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

# require "./models/user"