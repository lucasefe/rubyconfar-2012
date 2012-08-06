class User < Sequel::Model
  include Shield::Model

  def self.fetch(identifier)
    where(email: identifier).first
  end
end
