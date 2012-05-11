require 'r18n-core'

class Cuba
  module R18n

    def self.setup(app)
      app.plugin ::R18n::Helpers
      app.settings.store :default_locale, 'es'
      app.settings.store :translations, File.join(Dir.pwd, 'i18n/') 
    end

    def localized
      "(en|es)"
    end

    def current_locale(locale)
      ::R18n.set do
        ::R18n::I18n.default = settings.fetch(:default_locale)
        ::R18n::I18n.new([locale], settings.fetch(:translations))
      end
    end

    def page(path)
      view("pages/index")
    end
  end
end