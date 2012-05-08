# encoding: utf-8
class Video
  ALL = [
    ['39016099', 'Tom Preston-Werner', 'Optimizing for Happiness'],
    ['39005264', 'Konstantin Haase', 'Beyond Ruby'],
    ['38994805', 'Narihiro Nakamura', "Parallel worlds of CRuby's GC"],
    ['38958167', 'Scott Chacon', 'Un cuento de tres árboles'],
    ['38953018', 'Sean Cribbs', 'Embrace NoSQL and Eventual Consistency with Ripple'],
    ['38944759', 'Blake Mizerany', 'On distributed failures'],
    ['38916678', 'Aaron Patterson', 'Who makes the best asado?'],
    ['38812914', 'Nicolas Sanguinetti', "Testing: it's a horrible idea!"],
    ['38805389', 'Norman Clarke', '"Back to the future" with SQL and stored procedures'],
    ['38628915', 'Patrick Huesler', 'Monitoring with Syslog and EventMachine'],
    ['38628671', 'Federico Brubacher y Bruno Aguirre', 'Cómo ser un data scientist con Ruby'],
    ['38599552', 'Pedro Belo', 'On distributed systems - lessons learned at Heroku'],
    ['38561561', 'Luis Lavena', 'Tirando Ruby por la Ventana'],
    ['38561145', 'Alex Coles', 'The quiet and versatile Rubyist'],
    ['38531629', 'Koichiro Eto', 'The Timeless Way of Software Development'],
    ['38531248', 'Matt Aimonetti', "Concurrency \& garbage collection explained"],
    ['38496307', 'Yutaka Hara', "Ruby's past, present, and future"]
  ]

  def self.all
    ALL
  end

  def self.sample(quantity = 3)
    ALL.shuffle.sample(quantity)
  end
end