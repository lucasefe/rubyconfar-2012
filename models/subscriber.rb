class Subscriber < Sequel::Model
  
  self.raise_on_save_failure = false

  plugin :validation_helpers

  def validate
    super
    validates_presence [:email]
  end
  
end