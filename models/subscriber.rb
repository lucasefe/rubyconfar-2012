class Subscriber < Sequel::Model
  
  self.raise_on_save_failure = false

  plugin :validation_helpers

  def validate
    super
    validates_presence [:email], message: lambda { R18n.t.subscriber.is_not_present }
    validates_unique :email, message: lambda { R18n.t.subscriber.already_registered }
  end

end