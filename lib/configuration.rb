module Configuration
  extend self

  def default_email
    ENV['DEFAULT_EMAIL'] || "rubyconfar@gmail.com"
  end

  def smtp_url
    ENV['SMTP_URL'] || "smtp://localhost:1025"
  end

  def env
    ENV['RACK_ENV']
  end

end