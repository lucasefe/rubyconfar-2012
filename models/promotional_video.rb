
class PromotionalVideo
  ALL = [
    ['45990031', 'Konstantin Haase'],
    ['47012951', 'Pedro Belo'],
    ['46326846', 'Pablo Tortorella']
  ]

  def self.all
    ALL
  end

  def self.sample(quantity = 3)
    ALL.shuffle.sample(quantity)
  end
end
