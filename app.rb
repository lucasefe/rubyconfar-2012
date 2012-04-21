# encoding: utf-8
require './shotgun'

Cuba.use Rack::MethodOverride
Cuba.use Rack::Session::Cookie, key: "rubyconfar", secret: "jhaksfgsdkgaskjfgskdfgsk"
Cuba.use Rack::Static, root: "public", urls: ["/javascripts", "/stylesheets", "/images"]

Cuba.plugin Cuba::Render
Cuba.plugin Shield::Helpers

Cuba.settings.store(:template_engine, "slim")

Cuba.define do
  on default do
    res.write view("home")
  end
end
