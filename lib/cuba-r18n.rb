require 'r18n-core'

class Cuba
  module R18n

    def self.setup(app)
      app.plugin ::R18n::Helpers
      app.settings.store :translations, File.join(Dir.pwd, 'i18n/') 
    end

    def localized
      "(en|es)"
    end

    def current_locale
      @locale
    end

    def set_locale(locale)
      @locale = locale
      ::R18n.thread_set do
        ::R18n::I18n.new([locale], settings.fetch(:translations))
      end
    end

    def page(path)
      view("pages/#{path}")
    end
  end
end