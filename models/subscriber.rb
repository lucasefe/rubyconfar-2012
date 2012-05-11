class Subscriber < Sequel::Model
  
  include R18n::Helpers

  self.raise_on_save_failure = false

  plugin :validation_helpers

  def validate
    super
    validates_presence [:email]
    validates_unique :email, message: lambda { t.subscriber.already_registered }
  end

end