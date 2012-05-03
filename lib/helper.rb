module Helper

  def flash
    session['flash'] ||= {}
  end

end