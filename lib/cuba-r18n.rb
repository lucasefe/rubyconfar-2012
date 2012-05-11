require 'r18n-core'

class Cuba
  module R18n

    def self.setup(app)
      app.plugin ::R18n::Helpers
      app.settings.store :default_locale, 'en'
      app.settings.store :translations, File.join(Dir.pwd, 'i18n/') 
    end

    def localized
      "(en|es)"
    end

    def current_locale(locale)
      ::R18n.set do
        ::R18n::I18n.default = settings.fetch(:default_locale)
        locales = ::R18n::I18n.parse_http(req.env['HTTP_ACCEPT_LANGUAGE'])
        # if params[:locale]
        #   locales.insert(0, params[:locale])
        # elsif session[:locale]
        #   locales.insert(0, session[:locale])
        # end

        ::R18n::I18n.new(locale, settings.fetch(:translations))

      end
    end

    def page(path)
      view("pages/index")
    end
  end
end