class Speaker < Sequel::Model

  def display_name
    [first_name, last_name].join(" ")
  end
end
