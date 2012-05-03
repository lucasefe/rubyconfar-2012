class Subscriptor < Sequel::Model

  plugin :validation_helpers

  def validate
    super
    validates_presence [:email]
  end
  
end